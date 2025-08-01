#!/usr/bin/env python3
import json
import sys
import argparse

def update_sender_config(json_file, dest_ip, dest_port):
    # Read the JSON file
    with open(json_file, 'r') as f:
        config = json.load(f)
    
    # Update the dest_ip and dest_port
    config['serverless_connection']['sender']['dest_ip'] = dest_ip
    config['serverless_connection']['sender']['dest_port'] = int(dest_port)
    
    # Write back to file
    with open(json_file, 'w') as f:
        json.dump(config, f, indent=4)
    
    print(f"Updated sender.json: IP={dest_ip}, Port={dest_port}")

def update_receiver_config(json_file, listening_ip, listening_port):
    # Read the JSON file
    with open(json_file, 'r') as f:
        config = json.load(f)
    
    # Update the dest_ip and dest_port
    config['serverless_connection']['receiver']['listening_ip'] = listening_ip
    config['serverless_connection']['receiver']['listening_port'] = int(listening_port)
    
    # Write back to file
    with open(json_file, 'w') as f:
        json.dump(config, f, indent=4)
    
    print(f"Updated receiver.json: IP={listening_ip}, Port={listening_port}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Update sender.json configuration')
    parser.add_argument('--ip', required=True, help='Destination IP address')
    parser.add_argument('--port', required=True, help='Destination port')
    parser.add_argument('--sconfig', default='sender.json', help='JSON config file path')
    parser.add_argument('--rconfig', default='receiver.json', help='JSON config file path')
    
    args = parser.parse_args()
    #update_sender_config(args.sconfig, args.ip, args.port)
    #update_receiver_config(args.rconfig, args.ip, args.port)