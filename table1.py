import argparse
import re
import pandas as pd

def parse_experiment_log(log_content):
    """Parse experiment log and extract all metrics"""
    
    # Define the experiments and traces
    experiments = ["Syntra", "Salsify", "Syntra (20 fps)", "WebRTC-gcc"]
    traces = ["Fixed_Link", "Varying_Link", "ACK_Aggregation", "Shallow_Buffer"]
    
    # Storage for all data
    all_data = []
    
    # Split log into experiment sections
    exp_sections = re.split(r'Experiment for (.+?)---+', log_content)[1:]  # Skip first empty part

    for i in range(0, len(exp_sections), 2):
        if i + 1 >= len(exp_sections):
            break
            
        experiment_name = exp_sections[i].strip()
        experiment_content = exp_sections[i + 1]
        
        # Parse each trace section within the experiment
        trace_sections = re.split(r'(\w+_?\w*)--------', experiment_content)[1:]
        
        for j in range(0, len(trace_sections), 2):
            if j + 1 >= len(trace_sections):
                break
                
            trace_name = trace_sections[j].strip()
            trace_content = trace_sections[j + 1]
            
            # Extract metrics using regex
            metrics = {}
            
            # Median delay
            delay_match = re.search(r'Median per-frame delay \(ms\): ([\d.]+)', trace_content)
            if delay_match:
                metrics['median_delay_ms'] = float(delay_match.group(1))
            
            # P95 delay
            p95_delay_match = re.search(r'P95 per-frame delay \(ms\): ([\d.]+)', trace_content)
            if p95_delay_match:
                metrics['p95_delay_ms'] = float(p95_delay_match.group(1))
            
            # Median quality (SSIM)
            median_quality_match = re.search(r'Median per-frame quality \(ssim\): ([\d.]+)', trace_content)
            if median_quality_match:
                metrics['median_ssim'] = float(median_quality_match.group(1))
            
            # P25 quality (SSIM)
            p25_quality_match = re.search(r'P25 per-frame quality \(ssim\): ([\d.]+)', trace_content)
            if p25_quality_match:
                metrics['p25_ssim'] = float(p25_quality_match.group(1))
            
            # Frame rate
            frame_rate_match = re.search(r'Frame rate: ([\d.]+)', trace_content)
            if frame_rate_match:
                metrics['frame_rate'] = float(frame_rate_match.group(1))
            
            # Check for errors/crashes
            has_error = 'Aborted' in trace_content or 'Died on' in trace_content
            metrics['has_error'] = has_error
            
            # Only add if we found at least some metrics
            if metrics and any(k != 'has_error' for k in metrics.keys()):
                all_data.append({
                    'experiment': experiment_name,
                    'trace': trace_name,
                    **metrics
                })
    
    return all_data
def create_summary_table(data):
    """Create a summary table in the specified format"""
    df = pd.DataFrame(data)
    
    if df.empty:
        print("No data found!")
        return None
    
    # Create the formatted table
    result_data = []
    
    # Define the order of experiments and traces
    experiment_order = ["Syntra", "WebRTC-gcc", "Syntra (20 fps)", "Salsify"]
    trace_order = ["Fixed_Link", "Varying_Link", "ACK_Aggregation", "Shallow_Buffer"]
    
    for trace in trace_order:
        trace_data = df[df['trace'] == trace]
        
        for exp in experiment_order:
            exp_trace_data = trace_data[trace_data['experiment'] == exp]
            
            if not exp_trace_data.empty:
                row = exp_trace_data.iloc[0]
                
                # Map experiment names to match the desired format
                exp_name = exp
                if exp == "Salsify (20 fps)":
                    exp_name = "Syntra-20fps"
                elif exp == "WebRTC-gcc":
                    exp_name = "WebRTC-gcc"
                
                # Map trace names to match the desired format
                trace_name = trace.replace('_', ' ')
                if trace == "Fixed_Link":
                    trace_name = "Fixed Link Rate"
                elif trace == "Varying_Link":
                    trace_name = "Varying Link Rate"
                elif trace == "ACK_Aggregation":
                    trace_name = "ACK Aggregation"
                elif trace == "Shallow_Buffer":
                    trace_name = "Shallow Buffer"
                
                result_data.append({
                    'System': exp_name,
                    'Micro Trace': trace_name,
                    'p25': row.get('p25_ssim', '-'),
                    'median': row.get('median_ssim', '-'),
                    'median_delay': row.get('median_delay_ms', '-'),
                    'p95': row.get('p95_delay_ms', '-'),
                    'Frame Rate (fps)': row.get('frame_rate', '-')
                })
    
    # Create DataFrame with the formatted data
    result_df = pd.DataFrame(result_data)
    
    # Create the multi-column header structure
    columns = [
        ('System', ''),
        ('Micro Trace', ''),
        ('Video Quality (SSIM dB)', 'p25'),
        ('Video Quality (SSIM dB)', 'median'),
        ('Video Delay (ms)', 'median'),
        ('Video Delay (ms)', 'p95'),
        ('Frame Rate (fps)', '')
    ]
    
    # Reorder and rename columns
    formatted_df = pd.DataFrame({
        'System': result_df['System'],
        'Micro Trace': result_df['Micro Trace'],
        'p25': result_df['p25'],
        'median_quality': result_df['median'],
        'median_delay': result_df['median_delay'],
        'p95_delay': result_df['p95'],
        'Frame Rate (fps)': result_df['Frame Rate (fps)']
    })
    
    return formatted_df

def print_formatted_table(summary_table):
    """Print the table in the desired format"""
    if summary_table is None:
        return
    
    print("\n" + "=" * 120)
    print("SUMMARY TABLE")
    print("=" * 120)
    
    # Print header
    print(f"{'System':<18} {'Micro Trace':<18} {'Video Quality (SSIM dB)':<25} {'Video Delay (ms)':<20} {'Frame Rate':<18}")
    print(f"{'':<18} {'':<18} {'p25':<12} {'median':<12} {'median':<10} {'p95':<10} {'(fps)':<12}")
    print("-" * 120)
    
    # Group by trace for better formatting
    traces = ["Fixed Link Rate", "Varying Link Rate", "ACK Aggregation", "Shallow Buffer"]
    
    for trace in traces:
        trace_data = summary_table[summary_table['Micro Trace'] == trace]
        
        for i, (_, row) in enumerate(trace_data.iterrows()):
            system = row['System']
            micro_trace = trace if i == 0 else ""
            
            # Format values
            p25 = f"{row['p25']:.1f}" if pd.notna(row['p25']) else "-"
            median_q = f"{row['median_quality']:.1f}" if pd.notna(row['median_quality']) else "-"
            median_d = f"{row['median_delay']:.0f}" if pd.notna(row['median_delay']) else "-"
            p95_d = f"{row['p95_delay']:.0f}" if pd.notna(row['p95_delay']) else "-"
            frame_rate = f"{row['Frame Rate (fps)']:.0f}" if pd.notna(row['Frame Rate (fps)']) else "-"
            
            print(f"{system:<18} {micro_trace:<18} {p25:<12} {median_q:<12} {median_d:<10} {p95_d:<10} {frame_rate:<12}")
        
        # Add separator between trace groups
        if trace != traces[-1]:
            print()

def print_summary(data):
    """Print a comprehensive summary of the data"""
    print("=" * 80)
    print("EXPERIMENT RESULTS SUMMARY")
    print("=" * 80)
    
    df = pd.DataFrame(data)
    
    if df.empty:
        print("No data found in the log file!")
        return
    
    # Group by experiment
    for experiment in df['experiment'].unique():
        exp_data = df[df['experiment'] == experiment]
        
        print(f"\n{experiment}:")
        print("-" * (len(experiment) + 1))
        
        for _, row in exp_data.iterrows():
            print(f"  {row['trace']}:")
            if row.get('has_error', False):
                print("    ⚠️  ERRORS DETECTED")
            
            if 'median_delay_ms' in row and pd.notna(row['median_delay_ms']):
                print(f"    Median Delay: {row['median_delay_ms']:.1f} ms")
            if 'p95_delay_ms' in row and pd.notna(row['p95_delay_ms']):
                print(f"    P95 Delay: {row['p95_delay_ms']:.1f} ms")
            if 'median_ssim' in row and pd.notna(row['median_ssim']):
                print(f"    Median SSIM: {row['median_ssim']:.2f}")
            if 'p25_ssim' in row and pd.notna(row['p25_ssim']):
                print(f"    P25 SSIM: {row['p25_ssim']:.2f}")
            if 'frame_rate' in row and pd.notna(row['frame_rate']):
                print(f"    Frame Rate: {row['frame_rate']:.1f} fps")
            print()

if __name__ == '__main__':
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description="Parse experiment results and generate table.")
    parser.add_argument("input_file", help="Path to experiment_results.txt")
    args = parser.parse_args()

    # Read input file
    with open(args.input_file) as f:
        log = f.read()

    data = parse_experiment_log(log)
    #print_summary(data)

    summary_tables = create_summary_table(data)
    #print(summary_tables)
    print_formatted_table(summary_tables)
