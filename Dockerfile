FROM nginx

COPY entrypoint.sh .

RUN apt-get update && \
    apt-get install -y stress-ng && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x ./entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
