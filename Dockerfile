FROM ghost:5

USER root
RUN npm install pg --prefix /var/lib/ghost/versions/5.130.6 --legacy-peer-deps
USER node

CMD ["node", "current/index.js"]
