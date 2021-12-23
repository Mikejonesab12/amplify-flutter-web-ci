# amplify-flutter-web-ci
A Docker image for Flutter web builds in AWS Amplify.

Public AWS image: https://gallery.ecr.aws/c3u8y3f4/amplify-flutter-web-ci

Can be used as a custom Amplify build image for Flutter web builds.

Docs for custom Amplify build images: https://docs.aws.amazon.com/amplify/latest/userguide/custom-build-image.html#setup

Example Amplify build specification for a Flutter web build:

```
version: 1
backend:
  phases:
    # IMPORTANT - Please verify your build commands
    build:
      commands:
        - '# Execute Amplify CLI with the helper script'
        - amplifyPush --simple
frontend:
  phases:
    build:
      commands:
        - flutter pub get
        - flutter build web
  artifacts:
    # IMPORTANT - Please verify your build output directory
    baseDirectory: /build/web/
    files:
      - '**/*'
  cache:
    paths: []
```