## Project: Hugo Site CI/CD Deployment with OIDC Authentication for AWS

### Overview
This project demonstrates how to authenticate with AWS services (S3, Route 53, CloudFront) using OpenID Connect (OIDC) and a custom IAM role. It also includes a custom GitHub Actions workflow to build and deploy a Hugo website, pushing the output files to an S3 bucket for static site hosting.

### Key Features
- **OIDC Authentication**: Leverage OIDC for secure access to AWS services without requiring long-lived credentials.
- **Custom IAM Role**: A tailored IAM role with permissions for S3, Route 53, and CloudFront, enabling seamless interaction through OIDC.
- **GitHub Actions**: Automated workflows to:
  - Build the Hugo site
  - Upload the generated files to an S3 bucket for hosting.

### Usage
1. **AWS OIDC Setup**: Ensure your AWS environment is configured with an OIDC provider and a custom IAM role with access to S3, Route 53, and CloudFront.
2. **GitHub Actions**: The repository includes GitHub Actions YAML files to automate Hugo builds and uploads to S3.
3. **Hugo Site**: Customize your Hugo website locally. The build process and deployment are managed through GitHub Actions.

### Future Enhancements (TODO)
- [ ] Convert the OIDC setup and IAM role creation into a reusable **Terraform module**.
- [ ] Expand the GitHub Actions workflow to support multi-environment deployments (e.g., dev, prod).
- [ ] Add CloudFront configuration for automatic cache invalidation post-deployment.
- [ ] Include Route 53 DNS updates in the deployment process.

This project is a flexible solution for hosting static websites on AWS with modern authentication methods and automated CI/CD workflows.
