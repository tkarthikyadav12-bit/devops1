# ==============================================================================
# EXPERIMENT 4: Jenkins installation and setup, explore the environment
# ==============================================================================

# Step 1: Download Jenkins
# ------------------------------------------------------------------------------
# Download the Jenkins installer/package for your OS from the official website:
# https://www.jenkins.io/download/
# For Debian/Ubuntu, you can add repository keys and install using apt:
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y fontconfig openjdk-17-jre jenkins

# Step 2: Start the Jenkins Service
# ------------------------------------------------------------------------------
# On Linux: Use the following command to start the Jenkins service
sudo service jenkins start

# Check the status to ensure Jenkins service is actively running
sudo service jenkins status

# (On Windows: Open Services Manager (services.msc) and start "Jenkins")

# Step 3: Retrieve the Initial Administrator Password
# ------------------------------------------------------------------------------
# Jenkins generates an initial admin password required during first setup wizard
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Step 4: Access Jenkins Web Interface
# ------------------------------------------------------------------------------
# Open your web browser and navigate to:
# http://localhost:8080
# If the Jenkins service is running, you will see the Jenkins unlock/login page.

# Step 5: Initialize the Jenkins Environment
# ------------------------------------------------------------------------------
# 1. Paste the administrator password retrieved in Step 3.
# 2. Select "Install suggested plugins".
# 3. Create the first admin user (username, password, full name, email).
# 4. Configure Jenkins URL and complete setup.

# Step 6: Explore the Jenkins Environment
# ------------------------------------------------------------------------------
# Access dashboard features:
# - Build History: View logs and execution status of past builds
# - Manage Jenkins: Configure system settings, tools, credentials, and plugins
# - New Item: Create Freestyle, Pipeline, or Multi-branch jobs
