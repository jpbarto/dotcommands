# DOTCOMMAND_ALIAS _docker_run -p 8888:8888
FROM mxnet/python

RUN pip3 install jupyter

CMD ["jupyter", "notebook", "--allow-root", "--ip='0.0.0.0'"]
