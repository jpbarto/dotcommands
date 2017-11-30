# DOTCOMMAND_ALIAS _docker_run_aws
FROM alpine:latest

RUN apk update && apk add curl
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest && chmod +x /usr/local/bin/ecs-cli

CMD /usr/local/bin/ecs-cli
