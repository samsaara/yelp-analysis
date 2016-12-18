# yelp-analysis


[Yelp Data Analysis](https://www.yelp.com/dataset_challenge) in a Docker Container. This is part of my [blog post](https://vaddina.github.io/2016/12/18/Yelp-Dataset-Analysis-I.html). Find more details about the data analysis of this data and implementation details there.

With this dataset, we shall explore these 4 (7 actually 😉) questions.

1. How did generosity change over time? How does it compare by reviews' growth ?
  * How does it vary by region / sex ?

2. Is there any relationship between the reviews and tips left by any given user?
  * Is it different when looked from a business' perspective ?

3. How did gender diversity change over time?
  * How is it related to the contribution of reviews & tips?

4. Predict the rating given by a user just from his/her review.
  * In other words, perform a fine grained sentiment classification.


### Installation & setup

1. Install docker
2. Download the Yelp dataset to your local system
  * Keep the extracted JSON files in the folder named `yelp_dataset`.
3. Download [glove](http://nlp.stanford.edu/data/glove.6B.zip) embeddings to your local system and extract them.
  * We need just `glove.6B.100d.txt`... you can also use others if you wish to.

#### run the following commands in your shell
```
# pull and load the image
docker run kevad/docker-yelp'

# run it
docker run -d -p 8888:8888 kevad/docker-yelp

# check the name of the instance under 'NAME' section. let's say it is <container-name>
docker ps

# copy files to the Container
# assuming the 'yelp_dataset' folder and 'glove.6B.100d.txt' are in the current folder, do:
docker cp ./glove.6B.100d.txt <container-name>:/home/jovyan/work/yelp/data/embeddings/
docker cp ./yelp_dataset <container-name>:/home/jovyan/work/yelp/data/
```

* head to `http://localhost:8888/yelp/` for code inspection
* open `yelp-data-anaysis-presentation.ipynb` in that directory to play with the code. It won't write anything to disk.

* Change the default kernel to `Python 3` as shown below.

![python_kernel_selection](https://cloud.githubusercontent.com/assets/6368653/21296677/a5522636-c571-11e6-8d11-5b7b1baf09e8.jpg)


The [HTML version](./yelp-data-anaysis-presentation.html) intends to give you a rough idea.
