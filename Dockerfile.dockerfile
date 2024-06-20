# Use an official python as a parent image
FROM python:3.10.0
# Copy the current directory contents into the container at /app, u dont need to have the app folder
COPY . /app
# Set the working directory in the container. the app is virtual created by docker
WORKDIR /app

# Install any needed packages specified in requirements.txt using r- recusiverly-everything in file
RUN pip install -r requirements.txt


# Run streamlit when the container launches
CMD streamlit run FMaskCNN.py
