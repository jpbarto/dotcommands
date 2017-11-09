#!/bin/sh
echo "alias _docker_run='docker run -ti --rm -v \$HOME/.vimrc:/root/.vimrc'" > alias
echo "alias _docker_run_aws='_docker_run -v \$PWD:/root/dev:rw -v \$HOME/.aws:/root/.aws'" >> alias

for project in `ls src`
do
    docker build -t "jpbarto/${project}:dotcommand" "src/${project}"
    ALIAS_CMD=`grep '# DOTCOMMAND_ALIAS ' "src/${project}/Dockerfile" | sed -e 's/# DOTCOMMAND_ALIAS //'`
    echo "alias ${project}='${ALIAS_CMD} jpbarto/${project}:dotcommand'" >> alias
done
