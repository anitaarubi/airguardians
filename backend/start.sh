#!/bin/bash

# Start the Python application
gnome-terminal -- bash -c "python3 app.py; exec bash"

# Wait for 2 seconds
sleep 2

# Start the script to get sample data
gnome-terminal -- bash -c "python3 get_sample_data.py; exec bash"

# Wait for 2 seconds
sleep 2

# Navigate to the frontend directory, install npm packages, and start the frontend server
gnome-terminal -- bash -c "cd ../frontend && sleep 1 && npm install && npm start; exec bash"

# Wait for 1 second
sleep 1
