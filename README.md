# Simple Docker nginx Server with HTTPs enabled

## How to use

1. install **docker** and make sure it works properly.
2. use the localhost.crt and localhost.key or just make your own:
    `openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout localhost.key -out localhost.crt`
3. run this command (in this directory) on MacOS to register `localhost.crt` in **Keychain** where the Chrome browser checks certificate so that making the crt file trustful.
    `sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $(pwd)localhost.crt`
4. execute `./init.sh` to build docker image **ilocalserver**;
5. run `./start.sh` to start nginx server in a container && run `./stop.sh` to stop it;
6. put the html assets into `./assets/`.
7. Clean up docker image and containers, run `./clean.sh`