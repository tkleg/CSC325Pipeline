# CSC325 Source Control
Steps to setup and use the containerized development environment to run a flutter web application.
1. Ensure both [VSCode](https://code.visualstudio.com/download) and [Docker Desktop](https://www.docker.com/products/docker-desktop/) are installed on your computer.
2. Open Docker Desktop, this must stay open in the background for the devcontainer to work properly (you can minimize it).
3. In the terminal, clone the repo to a desired folder with the command 1git clone https://github.com/tkleg/CSC325Pipeline.git`.
4. Click the blue button at the buttom left of VSCode, then click **Reopen in Container** in the drop down menu from the top of the screen.
5. In the terminal, run 1cd app` to cd into the app's directory
6. In the terminal, run the command `flutter run -d web-server` to run the app
7. Finally, follow the localhost link that appears in the terminal ( this may take around a minute ) to appear.
