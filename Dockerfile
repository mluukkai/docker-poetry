FROM python:3.10-bookworm

WORKDIR /mydir

RUN useradd -m appuser

USER appuser

RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="/home/appuser/.local/bin:$PATH"

CMD bash

# build:
# docker build . --no-cache -t mluukkai/poetry:m1
# docker build . --no-cache -t mluukkai/poetry:intel

# run:
# docker run -it --volume="$PWD:/mydir" mluukkai/poetry:m1
# docker run -it --volume="$PWD:/mydir" mluukkai/poetry:intel