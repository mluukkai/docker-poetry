FROM python:3.12-bookworm

WORKDIR /mydir

RUN curl -sSL https://install.python-poetry.org | python3 -

CMD export PATH="/root/.local/bin:$PATH"; bash

# docker build . --no-cache -t mluukkai/poetry
# docker run -it --volume="$PWD:/mydir" mluukkai/poetry