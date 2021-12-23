FROM cirrusci/flutter:latest

RUN flutter config --enable-web
RUN sudo add-apt-repository main && sudo add-apt-repository universe && sudo add-apt-repository restricted && sudo add-apt-repository multiverse
RUN sudo apt-get update
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install -g @aws-amplify/cli
