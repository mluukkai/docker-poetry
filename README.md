## docker-poetry

Poetry env for Ohjelmistotuotanto

### usage

Go to the directory where you have a Poetry project and run command

´´´
docker run -it --volume="$PWD:/mydir" mluukkai/poetry:intel
´´´

As the container tag suggests, the above is for intel processors, if you have a M1 mac the command is

´´´
docker run -it --volume="$PWD:/mydir" mluukkai/poetry:m1
´´´

Now you have a dev environment up and running! You may use all the usual commands such as `poetry init`, `poetry install`, `poetry run` and `poetry shell`

The file editing could (and should) be done in the host machine.
