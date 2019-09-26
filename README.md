# Introduction 

A simple crontab service 

# Getting Started

Build
```
docker build -t crontab-us:latest .
```
Run
```
docker run --rm -it crontab-us:latest "* * * * * echo Hello"
```
Run with TimeZone
```
docker run --rm -it -e TZ=America/Sao_Paulo crontab-us:latest "* * * * * echo Hello"
```

Run multiple jobs
```
docker run --rm -it -e TZ=America/Sao_Paulo crontab-us:latest "* * * * * echo Hello" "*/2 * * * * echo Hello2" "*/5 * * * * echo Hello5"
```
# Author
Juan Enciso (juan.enciso@gmail.com)
