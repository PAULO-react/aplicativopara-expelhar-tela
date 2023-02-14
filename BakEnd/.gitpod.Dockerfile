FROM gitpod/workspace-full

# Install .NET 5.0.402 SDK
RUN wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb \
    && sudo dpkg -i packages-microsoft-prod.deb \
    && sudo apt-get update \
    && sudo apt-get install -y dotnet-sdk-5.0=5.0.402-1

ENV PATH=$PATH:/home/gitpod/.dotnet
