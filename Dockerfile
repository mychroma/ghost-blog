FROM ghost:4

USER root
RUN cd /var/lib/ghost/versions/4.48.9 && npm install pg --legacy-peer-deps
USER node

CMD ["node", "current/index.js"]
