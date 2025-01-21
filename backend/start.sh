#!/bin/bash

chmod +x start.sh
sudo apt update
sudo apt install tmux

# Start the Python application in a new tmux session
tmux new-session -d -s app_session "python3 app.py"
tmux attach -t app_session

# Wait for 2 seconds
sleep 2

# Start the script to get sample data in another tmux session
tmux new-session -d -s data_session "python3 get_sample_data.py"

# Wait for 2 seconds
sleep 2

# Navigate to the frontend directory, install npm packages, and start the frontend server
tmux new-session -d -s frontend_session "cd ../frontend && npm install && npm start"
