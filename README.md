# Brainboost

Brainboost is a cutting-edge chatbot application powered by OpenAI's advanced language model. It's
designed to revolutionize the way people access and extract knowledge from PDF documents, making
information more readily available and accessible to everyone. With Brainboost, you can quickly and
effortlessly retrieve information, no matter how complex, buried within PDFs.

Key Features:

1. **Instant PDF Text Extraction:** Brainboost can swiftly extract text content from PDFs. This
   feature ensures that you can access the knowledge contained within any PDF document.

2. **Natural Language Understanding:** Our chatbot uses OpenAI's state-of-the-art language model to
   understand natural language queries. Simply ask questions, provide context, or engage in a
   conversation to extract the information you need.

3. **PDF Summarization:** Brainboost can generate concise and coherent summaries of PDF documents.
   This feature is especially useful when you need a quick overview of lengthy materials.

4. **Search and Retrieval:** Utilize Brainboost to search for specific information within PDFs. It
   can locate and provide you with the relevant sections of the document containing your requested
   data.

5. **Cross-Platform Compatibility:** Use Brainboost on various platforms, including web, mobile, and
   desktop, allowing you to access your knowledge on the go.

Use Cases:

- **Education:** Students and researchers can use Brainboost to access and summarize academic
  papers, textbooks, and research materials.

- **Business:** Professionals can quickly retrieve critical information from reports, proposals, and
  industry documents.

- **Legal:** Legal professionals can efficiently search and reference legal documents and case law.

- **Personal Knowledge Management:** Individuals can organize and access their personal libraries of
  documents and research materials.

Brainboost empowers individuals and organizations to enhance accessibility to the wealth of
knowledge contained within PDF documents. By leveraging the capabilities of OpenAI's language model,
it brings an unprecedented level of ease, efficiency, and inclusivity to the process of extracting
valuable insights from these files. Start your journey to accessible knowledge with Brainboost
today!

## Project structure

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

### Prepare a new release

Prepare a new release by following these steps:

1. Update flutter version to the newest version: `flutter upgrade`
2. Update the changelog in `CHANGELOG.md`
3. Update the version and build number in `pubspec.yaml`
4. Update version in `lib/ui/pages/settings/settings_page.dart`
5. Update dependencies
    1. Update flutter dependencies:`flutter pub upgrade`
    2. Update iOS dependencies: `cd ios && pod update && cd ..`
    3. Update Android dependencies: `cd android && ./gradlew app:dependencies && cd ..`
    4. Update MacOS dependencies: `cd macos && pod update && cd ..`
6. Push all changes to `main` branch with `git push`
7. Create a new git tag:
    1. `git tag -a vX.X.X -m "Release vX.X.X"`
    2. `git push origin vX.X.X`
8. Merge `main` branch into `stable` branch on GitHub:
    1. Go to https://github.com/pzierahn/brainboost_app/tree/stable
    2. Click on `This branch is ..., X commits behind main`
    3. Click on `Create pull request`
    4. Click on `Merge pull request`

After the release is merged into the `stable` branch, the new release will be automatically deployed by using Google Cloud Run.
