[![CEOehis](https://circleci.com/gh/CEOehis/nd9991-microservices.svg?style=svg)](https://circleci.com/gh/CEOehis/nd9991-microservices)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Request for a prediction: `./make_prediction.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Project file Structure

    ├── .circleci
    │   └── config.yml                            # Circle CI configuration file
    ├── model_data                                # Directory with model data
    │   ├── boston_housing_prediction.joblib
    │   └── housing.csv
    ├── output_txt_files                          # Directory with output from docker/kubernetes
    │   ├── docker_out.txt
    │   └── kubernetes_out.txt
    ├── Dockerfile                                # Docker build configuration
    ├── Makefile                                  # Makefile with different utility targets
    ├── README.md
    ├── app.py                                    # Python Flask API
    ├── make_prediction.sh                        # Script to call the ML api
    ├── requirements.txt
    ├── run_docker.sh                             # script to build and run app as a container
    ├── run_kubernetes.sh                         # script to run docker image in kubernetes
    └── upload_docker.sh                          # script to publish docker image to Hub
