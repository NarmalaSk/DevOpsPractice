echo "credentials for the runner"

echo "Enter URL of Repository ::"
read $URLREPO

echo "Enter Token ::"
read $Token


# Create a folder for the GitHub Actions Runner
mkdir actions-runner && cd actions-runner

# Download the latest runner package
curl -o actions-runner-linux-x64-2.321.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.321.0/actions-runner-linux-x64-2.321.0.tar.gz

# Verify the integrity of the downloaded package
echo "ba46ba7ce3a4d7236b16fbe44419fb453bc08f866b24f04d549ec89f1722a29e  actions-runner-linux-x64-2.321.0.tar.gz" | shasum -a 256 --check

# Extract the installer
tar xzf ./actions-runner-linux-x64-2.321.0.tar.gz

echo "Downloaded GitHub Actions Runner successfully."

# Pause for a moment
sleep 1

# Configure the GitHub Actions Runner
./config.sh --url $URLREPO --token $Token

# Start the GitHub Actions Runner
./run.sh

echo "Self-hosted runner added successfully."
