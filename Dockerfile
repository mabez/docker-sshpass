FROM skilldlabs/gitlab-runner-alpine:v1.8.1

RUN apk update && apk add --no-cache openssh sshpass

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["sshpass"]
