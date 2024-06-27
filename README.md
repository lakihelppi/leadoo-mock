# Leadoo Mock

Docker image for Leadoo server Mock

### What is this?

This repo is nothing more than just a Mockoon server in Dockerfile.

When you load the `data.json` to edit, remember to commit the changes and rebuild the Docker image.

### Tags

We have a GitHub Actions `docker.yaml` for building and publishing the Docker image to Docker Hub, but it only works when we push the tags.

Use the tag format: `v1.2.3`

Remember to push the tag! It is different from pushing the commit!

Under the hood, the GitHub Actions will push into your new tag, as well as `latest`

So if you have the git tag `v1.2.3`, you will have the Docker images:

- `lakihelppi/leado-mock:1.2.3`, and
- `lakihelppi/leadoo-mock:latest` (which points to the `1.2.3`)
