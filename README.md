## Event Streaming with Kinesis
This project was inspired by graduate classes in data engineering. Great part of the material was built using the Rony package and Professor Neylson Crepalde's class codes.

The main project idea was to reproduce a simple dataflow feed through event simulation. The Kinesis was responsible for collecting events and inserting them into the bucket. The Glue Crawler service was responsible to deliver data to Athena. Cloud Watch services were also used.

Solution Architecture:

![kinesis](img/edc_mod1_delta-kinesis.png)

0) Create all the secrets to your gihtub repository.
1) Create a key-pair in EC2.
2) Dont forget to change your account ID inside policy ARN!
3) You must have at least one bucket with your raw data to process.
4) Create pull request on dev branch in order to test all structures in CI/CD
5) Verify at github actions if everything is ok.
6) Check at AWS if all structures and products were created.
7 Run simulations_to_kinesis.py in order to generate random data to be collected by kinesis.
7) Run terraform init
8) Run terraform destroy (it wont destroy s3 bucket that is not empty)