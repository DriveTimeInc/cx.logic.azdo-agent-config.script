sudo apt-get update
sudo apt-get upgrade

# Install pre-requisite packages.
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    apt-transport-https \
    software-properties-common \
    zip \

# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Install aspnetcore runtime 6.0
sudo apt-get install -y aspnetcore-runtime-6.0

# Add the GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update repository
sudo apt-get update

# Set to docker repo
apt-cache policy docker-ce

# Install docker-ce
sudo apt-get install -y docker-ce


# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash