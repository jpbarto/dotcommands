# DOTCOMMAND_ALIAS _docker_run -p 8888:8888 -v $PWD:/root/dev:rw
FROM mxnet/python

RUN pip3 install jupyter matplotlib gluon

CMD ["jupyter", "notebook", "--allow-root", "--ip='0.0.0.0'"]
