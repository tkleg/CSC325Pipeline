**Pipeline.md**

***CI/CD Pipeline Environment***
The pipeline operates with GitHub actions. We use workflows to allow the application to be built, tested for code coverage, and deployed so that it can be played. The cloud service used for this is Git, which allows the workflow to function remotely on another machine.

***CI/CD Pipeline Tools***
-   GitHub Actions allows us to actually run pipelines upon pushing a repo. It uses triggers in `.yml` files in order to trigger a workflow.
-   GitHub pull requests are used to help us handle issues and fixing them. Since pull requests are ran when we merge branches back after fixing issues.

***Automation Process***
-   We fix dependencies by running `flutter pub get` within the app directory
-   We run tests by running `flutter test`
-   We build the app with `flutter build web`
-   We deploy the app so that a link is provided to allow the app to be accessed anywhere with an internet connection