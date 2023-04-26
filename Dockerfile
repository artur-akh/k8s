FROM nginx

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
