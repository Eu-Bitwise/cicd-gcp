# gcp-cicd
CI/CD pipeline for Cloud Run

# Description
Simple express web server container that is build using Cloud Build then deployed to Cloud Run when a push is made into the repo.

# Setup
## Service account setup
1) In Cloud Build > Settings, Check Cloud Run status to ENABLED

## Create a trigger in Cloud Build
1) Specify the event to trigger the image build, eg: push to branch
2) In "Source" specify where is the app repo. Better if you use a Cloud Source Repositories.
3) In "Advanced" > "Add Variable" called `_SERVICE_NAME` with the name you want for the image.
