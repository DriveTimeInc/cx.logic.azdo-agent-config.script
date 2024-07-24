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
    openssl \
    build-essential \
    git \
    wget \
    llvm \
    bzip2 \
    libssl-dev \
    zlib1g-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncurses-dev \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libffi-dev \
    liblzma-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libbz2-dev


# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Install dotnet SDK
sudo apt-get install -y dotnet-sdk-6.0

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

# Install argo rollouts
curl -LO "https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64"
chmod +x ./kubectl-argo-rollouts-linux-amd64
mv ./kubectl-argo-rollouts-linux-amd64 /usr/local/bin/kubectl-argo-rollouts

# # install pyenv
# curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# # setup pyenv entries in .bashrc
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
# echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# # setup pyenv entries in .profile
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
# echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
# echo 'eval "$(pyenv init -)"' >> ~/.profile

# # reload the shell
# source ~/.profile

# # install 3.11.9
# pyenv install 3.11.9

# # set the system to use 3.11.9
# pyenv global 3.11.9
