# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.321.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.321.0/actions>echo "ba46ba7ce3a4d7236b16fbe44419fb453bc08f866b24f04d549ec89f1722a29e  actions-runner-linux-x64-2.321.0.tar.gz" | shas>
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.321.0.tar.gz

echo "Downloaded Ga Actions Runner Successfully"

sleep 1

./config.sh

./run.sh


echo " Self Hosted Runner Added Sucessfully "
