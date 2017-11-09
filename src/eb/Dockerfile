# DOTCOMMAND_ALIAS _docker_run_aws 
FROM python:3.6.2-alpine3.6

RUN apk update && apk add git
RUN pip install awsebcli --upgrade

WORKDIR /root/dev

ENTRYPOINT ["eb"]
