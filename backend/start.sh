#!/bin/bash

chmod +x start.sh
sudo apt update
sudo apt install tmux

# Start the Python application in a new tmux session
tmux new-session -d -s app_session "python3 app.py"

# Wait for 2 seconds
sleep 2

# Start the script to get sample data in another tmux session
tmux new-session -d -s data_session "python3 get_sample_data.py"

# Wait for 2 seconds
sleep 2

# Navigate to the frontend directory, install npm packages, and start the frontend server
tmux new-session -d -s frontend_session "cd ../frontend && npm install && npm start"

# Optional: Attach to the tmux session (e.g., app_session) if you want to interact with it
tmux attach -t app_session
