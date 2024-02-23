# Chatbot

Brainboost is an application designed to improve the performance of chatbots by employing a method
known as Retrieval Augmented Generation (RAG). It functions by extracting information from websites
and PDF files and feeding this information into the chatbot to minimize errors or hallucinations in
its responses. This allows users to interactively ask questions and receive information directly
from PDFs and websites, making the chatbot a more reliable source for accurate information.

## Features

1. **Knowledge Extraction:** Seamlessly extract knowledge from PDFs and websites, making it easier
   than ever to access the information you need.
2. **Intelligent Information Retrieval:** Brainboost automatically finds the right information in
   response to your queries. By ensuring the model has access to relevant data, we significantly
   reduce the chances of generating inaccurate or irrelevant information.
3. **Interactive Q&A:** Don’t just stop at your first question; our app supports the asking of
   follow-up questions, enabling a deeper and more precise exploration of topics.
4. **Explicit Knowledge Addition:** You have the freedom to add specific knowledge to your prompts,
   further reducing the likelihood of hallucinations and enhancing the model's accuracy.
5. **Cross-Platform Compatibility:** Regardless of your device preference, our application ensures a
   seamless and efficient experience across various platforms.

## Use Cases

The versatility of our RAG App makes it an indispensable tool across various fields:

- **Students and Researchers**: Summarize academic content from papers, textbooks, and online
  resources quickly and efficiently.
- **Professionals**: Extract pivotal information from an array of business documents, including
  reports, proposals, and industry-specific texts.

## Demo video

The [demo video](https://youtu.be/e8Glsvh2dHo) shows the basic functionality of the app:

[![Chatbot Demo](https://img.youtube.com/vi/e8Glsvh2dHo/0.jpg)](https://youtu.be/e8Glsvh2dHo)

## Additional Details and Setup Instructions

```bash
.
├── CHANGELOG.md         # Changelog of the project
├── android              # Android specific files
├── assets               # Static assets like images, fonts, etc.
├── ios                  # iOS specific files
├── lib                  # All dart source code
│   ├── generated        # Code that was generated and shouldn't be touched!
│   ├── services         # Services providers, like the doorman-service, for UI components
│   ├── ui               # All User Interface components and Widgets
│   │   ├── pages        # All pages in the App
│   │   ├── theme        # Theme data like fonts, colors, shapes, etc.
│   │   └── widgets      # Widgets and dialogs that are shared across pages
│   └── utils            # Helper functions that are used across components
├── macos                # MacOS specific files
├── pubspec.yaml         # Project configuration

```

### Project Requirements:

This project is developed using **Flutter**, a popular open-source framework by Google for building
natively compiled applications for mobile, web, and desktop from a single codebase. To successfully
run and build this project, developers must have a basic understanding of Flutter and the Dart
programming language.

### Google Firebase Integration:

**Brainboost** requires **Google Firebase** for its operation. Firebase provides a suite of cloud
services designed to support applications, including realtime databases, authentication services,
analytics, and more. To integrate Firebase into the Brainboost project, follow these setup
instructions:

1. Visit the Firebase official setup guide for Flutter
   apps: [Firebase Setup Instructions](https://firebase.google.com/docs/flutter/setup).
2. Follow the guided steps to create a Firebase project and connect it with your Brainboost
   application.
3. Once set up, download and integrate the `google-services.json` (for Android)
   and `GoogleService-Info.plist` (for iOS) into your project as directed in the Firebase setup
   guide. This will link your application with Firebase services.

### Backend Services:

The backend services for Brainboost are separately managed and can be found
at [Brainboost Backend Services](https://github.com/pzierahn/chatbot_services). The backend is
crucial for handling complex operations that are not feasible to run on the client-side, such as
intensive computations, storing and managing databases, authentication, and more.

**Changing the Backend Address:**

- If you need to point your Brainboost application to a different backend address (for example, if
  you're hosting your version of the backend), you must update the backend service URL.
- This configuration is located in the file `lib/service/brainboost.dart`. Search for a variable or
  method that specifies the backend URL and alter it to your new backend service address.

### Getting Started with Flutter:

Since Brainboost is written in Flutter, developers aiming to contribute or modify the project need
to have Flutter installed on their development machines. Here’s a quick guide to get started:

1. Download and install Flutter by following the official
   guide: [Install Flutter](https://flutter.dev/docs/get-started/install).
2. Ensure that your development environment is set up according to the guides for your target
   platform (iOS, Android, Web, Desktop).
3. Once Flutter is installed, you can clone the Brainboost repository to your local machine.
4. Navigate to the project directory in your terminal, and run `flutter pub get` to install all the
   dependencies.
5. With the dependencies installed, you can now open the project in your preferred IDE or editor to
   start development.

By following these additional setup and project requirements, you will be well on your way to
utilizing, modifying, or contributing to the Brainboost project.

### Prepare a new release

Prepare a new release by following these steps:

1. Update flutter version to the newest version: `flutter upgrade`
2. Update the changelog in `CHANGELOG.md`
3. Update the version and build number in `pubspec.yaml`
4. Update version in `lib/main.dart`
5. Update dependencies
    1. Update flutter dependencies:`flutter pub upgrade`
    2. Update iOS dependencies: `cd ios && pod update && cd ..`
    3. Update Android dependencies: `cd android && ./gradlew app:dependencies && cd ..`
    4. Update MacOS dependencies: `cd macos && pod update && cd ..`
6. Push all changes to `main` branch with `git push`
7. Create a new git tag:
    1. `git tag vX.X.X`
    2. `git push origin vX.X.X`

After the release is merged into the `stable` branch, the new release will be automatically deployed
by using Google Cloud Run.