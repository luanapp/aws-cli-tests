# aws-cli-tests
Repository to make some aws-cli tests


## AWS CloudFront
The scripts here are to test the invalidation of specific paths

### Terraform
There's a terraform module to build an example of infrastructure to test this behaviour

#### To run the terraform scripts

```sh
docker run -it -v ${PWD}:/app --workdir "/app" --entrypoint "" hashicorp/terraform:light /bin/sh
```

```sh
terraform plan -out plan
```

```sh
terraform plan -out plan
```

