# yelp-analysis


[Yelp Data Analysis](https://www.yelp.com/dataset_challenge). This is part of my [blog post](https://vaddina.github.io/2016/12/18/Yelp-Dataset-Analysis-I.html) multipart series. Find more details about the data analysis and implementation details there.

With this dataset, we shall explore these 4 (7 actually 😉) questions.

1. How did generosity change over time? How does it compare by reviews' growth ?
  * How does it vary by region / sex ?

2. Is there any relationship between the reviews and tips left by any given user?
  * Is it different when looked from a business' perspective ?

3. How did gender diversity change over time?
  * How is it related to the contribution of reviews & tips?

4. Predict the rating given by a user just from his/her review.
  * In other words, perform a fine grained sentiment classification.


### Install & Setup

1. Install the packages: `pandas, seaborn, keras, wordcloud, scikit-learn, pyspark`
2. Download the Yelp dataset to your local system
  * Keep the extracted JSON files in the folder named `./data/yelp_dataset`.
3. Download [glove](http://nlp.stanford.edu/data/glove.6B.zip) embeddings to your local system and extract them.
  * We need just `glove.6B.100d.txt`... you can also use others if you wish to. Move them to `./data/embeddings`.

### Explore

Run the [notebook](./yelp-data-anaysis-presentation.ipynb) and/or follow the blog post.
