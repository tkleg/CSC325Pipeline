# CSC325 Source Control
Steps to setup and use the containerized development environment to run a flutter web application.
1. Ensure both [VSCode](https://code.visualstudio.com/download) and [Docker Desktop](https://www.docker.com/products/docker-desktop/) are installed on your computer.
2. Open Docker Desktop, this must stay open in the background for the dev container to work properly (you can minimize it).
3. Open VSCode and open any folder by pressing Ctrl+K followed by Ctrl+O. Then select the desired folder.
4. If a terminal does not open automatically, press Ctrl+` to open a terminal.
5. In the terminal, clone the repo to a desired folder with the command "git clone https://github.com/tkleg/CSC325Pipeline.git".
6. Click the blue button at the buttom left of VSCode, then click "Reopen in Container" in the drop down menu from the top of the screen.
7. In the terminal, run the command "cd CSC325Pipeline/" in order to cd into the repo.
8. In the termainl, run "flutter create (app name)" to create a default flutter app 
9. In the terminal, run "cd (app name in step 9)" to cd into the app
10. In the terminal, run the command "flutter run -d web-server" to run the app
11. Finally, follow the localhost link that appears in the terminal ( this may take around a minute )
