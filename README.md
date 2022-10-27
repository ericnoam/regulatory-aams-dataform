# Regulatory AAMS Dataform
Dataform BigQuery definitions for the Italian market PoC.
## Dataform CLI
### Installation
```bash
npm i -g @dataform/cli
```
### Create a new project
```bash
### From scratch
dataform init bigquery new_project --default-database
### if you´ve cloned a pre-existing project (like this one)
dataform install
```
### Compile your code
```bash
dataform compile
```
### Create a credentials file
```bash
dataform init-creds bigquery

[1] US (default)
[2] EU
[3] other

Enter the location of your datasets [1, 2, 3]: 2

[1] ADC (default)
[2] JSON Key

Do you wish to use Application Default Credentials or JSON Key [1/2]: 2
Please follow the instructions at https://docs.dataform.co/dataform-cli#create-a-credentials-file/
to create and download a private key from the Google Cloud Console in JSON format.
(You can delete this file after credential initialization is complete.)

Enter the path to your Google Cloud private key file:
> [path to dataform-regulatory-reporting's Service Account JSON key]
```
> the resultig .df-credentials.json file should under no circumstance be committed to GIT.
### Run the code
```bash
dataform run --dry-run
```
Remove `--dry-run` to run on BigQuery
## Docker
## Run locally
```bash
docker build -t regulatory-aams-dataform .
docker run --name dataform-incremental regulatory-aams-dataform
```
### Build and Push to Artigact Registry
You have to be authenticated with an account that has the `regulatory-italian-market` role.
```bash
docker tag regulatory-aams-dataform europe-north1-docker.pkg.dev/leo-dev-platform/regulatory-reporting-docker-repo/regulatory-aams-dataform:latest
docker push europe-north1-docker.pkg.dev/leo-dev-platform/regulatory-reporting-docker-repo/regulatory-aams-dataform:latest
```
