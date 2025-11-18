# Workspace Setup

## Things that we will suppose that you alredy have
- [x] A GCP account created
- [x] A GCP IAM user created, and with all the required permissions
- [x] A GCS bucket created to can store all the tfstate files



## Terraform installation
``` shell
## Installing the requirements
PKGMAN=$([[ "${OS_TYPE}" == "linux" ]] && echo "sudo apt" || echo brew)
${PKGMAN} install wget unzip

## Downloading and installing terraform locally
INSTALLATION_DIR="/tmp/terraform_install"
TF_VERSION="1.13.5"
OS_TYPE=$(uname -s | tr "[A-Z]" "[a-z]")
OS_ARCH=$([[ $(uname -m) =~ "x86_64" ]] && echo "amd64" || echo "${OS_ARCH}")

mkdir "${INSTALLATION_DIR}"
wget -P "${INSTALLATION_DIR}" "https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_${OS_TYPE}_${OS_ARCH}.zip"
unzip ${INSTALLATION_DIR}/terraform*.zip -d "${INSTALLATION_DIR}"
sudo mv "${INSTALLATION_DIR}/terraform" /usr/local/bin
rm -rf "${INSTALLATION_DIR}"
```



## Gcloud Installation
``` shell
## Installation
INSTALLATION_DIR="/tmp/gcloud_install"
OS_TYPE=$(uname -s | tr "[A-Z]" "[a-z]")
OS_ARCH=$(uname -m | tr "[A-Z]" "[a-z]")

mkdir "${INSTALLATION_DIR}"
wget -P "${INSTALLATION_DIR}" "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${OS_TYPE}-${OS_ARCH}.tar.gz"
tar -xzvf ${INSTALLATION_DIR}/google-cloud-cli*.tar.gz -C "${INSTALLATION_DIR}"
sudo mv "${INSTALLATION_DIR}/google-cloud-sdk" /opt/google-cloud-sdk
echo -e "\n\nPATH=${PATH}:/opt/google-cloud-sdk/bin" > ~/.bashrc
rm -rf "${INSTALLATION_DIR}"

## Setup
gcloud init
gcloud auth login
```



## terraform-docs Installation
``` shell
go install github.com/terraform-docs/terraform-docs@v0.20.0
```
