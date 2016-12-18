FROM jupyter/pyspark-notebook:latest

USER root

RUN  apt-get -y update

COPY init_yelp_stuff.sh /

COPY spark-defaults.conf $SPARK_HOME/conf/

RUN  chmod +x /init_yelp_stuff.sh

USER $NB_USER

RUN  pip install --upgrade pip && pip install keras && pip install wordcloud

RUN  conda install -y bokeh

COPY ./*.py $HOME/work/yelp/

COPY yelp-data-anaysis-presentation.ipynb $HOME/work/yelp

USER root

RUN  /init_yelp_stuff.sh

USER $NB_USER
