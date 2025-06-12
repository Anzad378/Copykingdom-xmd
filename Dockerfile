FROM node:lts-buster
RUN git clone https://github.com/Anzad378/KINGDOM-XMD/root/Mr kingdom_md
WORKDIR /root/Mr kingdom_md
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
