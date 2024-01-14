1. Build Docker Image:
    docker build -t fyle-run:0.0.1 .  
2. To Run Server on docker:
     docker container run -d -p 7755:7755 fyle-run:0.0.1
     open :- http://localhost:7755/
     output :- status : "ready"
3: To run the tests on docker:
     docker container run fyle-run:0.0.1 bash test.sh   
4: To get the coverage report:
     docker container run fyle-run:0.0.1 bash cov.sh    