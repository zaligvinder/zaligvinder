# Building a docker container
Execute the following commands to build a docker container

``docker build -t zaligvinder .``

``docker run --name zv -dp 8081:8081 -it zaligvinder``

``docker attach zv``

## Sample run
Start a run using CVC4, Z3str3, and Z3seq on all benchmarks by executing the following commands

```
cd /zaligvinder/
python3 astAll.py
```

To run only the Woorpje benchmark set execute the following commands

```
cd /zaligvinder/
python3 astWoorpje.py
```

The webserver will be started automatically once the run has finished.