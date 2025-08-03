import argparse
import re
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def parse_experiment_log(log_content):
    """Parse experiment log and extract all metrics"""
    
    # Define the experiments and traces
    experiments = ["Syntra", "Salsify", "WebRTC-gcc", "WebRTC-Vegas"]
    traces = ["LTE_ATT", "TMobile_UMTS", "Verizon_LTE"]
    
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

def plot_figure4(data, save_path=None):
    """Create Figure 4 bar chart from parsed experiment data"""
    
    # Convert to DataFrame for easier manipulation
    import pandas as pd
    df = pd.DataFrame(data)
    
    if df.empty:
        print("No data found!")
        return
    
    # Define systems and traces in the desired order
    systems = ["Syntra", "WebRTC-gcc", "WebRTC-Vegas", "Salsify"]
    traces = ["LTE_ATT", "TMobile_UMTS", "Verizon_LTE"]
    trace_labels = ["LTE-ATT", "TMobile-UMTS", "Verizon-LTE"]
    
    # Extract data for plotting
    p95_data = []
    quality_data = []
    fps_data = []
    
    for system in systems:
        p95_row = []
        quality_row = []
        fps_row = []
        
        for trace in traces:
            # Find matching data
            match = df[(df['experiment'] == system) & (df['trace'] == trace)]
            
            if not match.empty:
                row = match.iloc[0]
                p95_row.append(row.get('p95_delay_ms', 0))
                quality_row.append(row.get('median_ssim', 0))
                fps_row.append(row.get('frame_rate', 0))
            else:
                p95_row.append(0)
                quality_row.append(0)
                fps_row.append(0)
        
        p95_data.append(p95_row)
        quality_data.append(quality_row)
        fps_data.append(fps_row)
    
    # Convert to numpy arrays for easier manipulation
    p95_data = np.array(p95_data)
    quality_data = np.array(quality_data)
    fps_data = np.array(fps_data)
    # Set up the figure
    fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))
    
    # Colors for each trace
    colors = ['#1f77b4', '#ff7f0e', '#2ca02c']  # Blue, Orange, Green
    
    # Bar settings
    x = np.arange(len(systems))
    width = 0.25
    
    # Plot 1: P95 Latency
    for i, (trace_label, color) in enumerate(zip(trace_labels, colors)):
        values = p95_data[:, i]
        bars = ax1.bar(x + i*width, values, width, label=trace_label, color=color)
        
        # Add value labels on bars
        for j, (bar, v) in enumerate(zip(bars, values)):
            if v > 0:
                ax1.text(bar.get_x() + bar.get_width()/2, bar.get_height() + max(values)*0.01, 
                        f'{v:.0f}', ha='center', va='bottom', fontsize=8)
    
    ax1.set_ylabel('Latency (ms)')
    ax1.set_title('(a) P95 Latency (ms)')
    ax1.set_xticks(x + width)
    ax1.set_xticklabels(systems, rotation=0)
    ax1.legend()
    ax1.grid(True, alpha=0.3, axis='y')
    
    # Plot 2: Median Quality
    for i, (trace_label, color) in enumerate(zip(trace_labels, colors)):
        values = quality_data[:, i]
        bars = ax2.bar(x + i*width, values, width, label=trace_label, color=color)
        
        # Add value labels on bars
        for j, (bar, v) in enumerate(zip(bars, values)):
            if v > 0:
                ax2.text(bar.get_x() + bar.get_width()/2, bar.get_height() + max(values)*0.01, 
                        f'{v:.1f}', ha='center', va='bottom', fontsize=8)
    
    ax2.set_ylabel('SSIM (dB)')
    ax2.set_title('(b) Median Quality (SSIM dB)')
    ax2.set_xticks(x + width)
    ax2.set_xticklabels(systems, rotation=0)
    ax2.legend()
    ax2.grid(True, alpha=0.3, axis='y')
    
    # Plot 3: Frame Rate
    for i, (trace_label, color) in enumerate(zip(trace_labels, colors)):
        values = fps_data[:, i]
        bars = ax3.bar(x + i*width, values, width, label=trace_label, color=color)
        
        # Add value labels on bars
        for j, (bar, v) in enumerate(zip(bars, values)):
            if v > 0:
                ax3.text(bar.get_x() + bar.get_width()/2, bar.get_height() + max(values)*0.01, 
                        f'{v:.0f}', ha='center', va='bottom', fontsize=8)
    
    ax3.set_ylabel('Frame Rate (fps)')
    ax3.set_title('(c) Average Frame Rate (fps)')
    ax3.set_xticks(x + width)
    ax3.set_xticklabels(systems, rotation=0)
    ax3.legend()
    ax3.grid(True, alpha=0.3, axis='y')
    
    # Adjust layout
    plt.tight_layout()
    
    # Add overall figure caption
    #fig.suptitle('Figure 4: The Comparison of Syntra, WebRTC-GCC, WebRTC-Vegas, and Salsify over three real-world network traces\n(AT&T, T-Mobile, Verizon). The metrics include P95 Latency, Median Quality, and Average Frame Rate.', 
    #            y=1.02, fontsize=11)
    
    # Save or show
    if save_path:
        plt.savefig(save_path, dpi=300, bbox_inches='tight')
        print(f"Figure saved to {save_path}")
    
    plt.show()
    
    return fig

# Add this to your main section
if __name__ == '__main__':
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description="Parse experiment results and generate table.")
    parser.add_argument("input_file", help="Path to experiment_results.txt")
    parser.add_argument("output_figure", help="Path to print out the figure")

    args = parser.parse_args()

    # Read input file
    with open(args.input_file) as f:
        log = f.read()

    data = parse_experiment_log(log)
    #print(data)
    plot_figure4(data, args.output_figure)
