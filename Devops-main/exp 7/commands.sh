# ==============================================================================
# EXPERIMENT 7: Develop a Simple Containerized Application Using Docker
# ==============================================================================

# Step 1: Build the Docker image
# ------------------------------------------------------------------------------
# Run the following command to build the Docker image:
# This command builds a new Docker image using the Dockerfile in the current directory
# and tags the image with the name "myimage".
docker build -t myimage .

# Step 2: Run the Docker container
# ------------------------------------------------------------------------------
# Run the following command to start a new container based on the image:
# This command starts a new container named "mycontainer" based on the "myimage"
# image and runs the Python script inside the container.
docker run --name mycontainer myimage

# Step 3: Verify the output
# ------------------------------------------------------------------------------
# Run the following command to verify the output of the container:
# This command displays the logs of the container and should show the "Hello World" output.
docker logs mycontainer
