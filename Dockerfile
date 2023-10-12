FROM python:3.10-bookworm

WORKDIR /mydir

RUN curl -sSL https://install.python-poetry.org | python3 -

CMD export PATH="/root/.local/bin:$PATH"; bash

# build:
# docker build . --no-cache -t mluukkai/poetry:m1
# docker build . --no-cache -t mluukkai/poetry:intel

# run:
# docker run -it --volume="$PWD:/mydir" mluukkai/poetry:m1
# docker run -it --volume="$PWD:/mydir" mluukkai/poetry:intel