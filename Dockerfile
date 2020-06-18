FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install pandas seaborn jupyter-offlinenotebook

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work

RUN mkdir data
COPY --chown=1000:100 data/uber_requests.csv data
COPY --chown=1000:100 data/noe_airbnb_dataset.csv data
COPY --chown=1000:100 data/uber_requests.csv data
COPY --chown=1000:100 data/heetch.csv data
COPY --chown=1000:100 data/getaround.csv data
COPY --chown=1000:100 data/nyc_airbnb.csv data
COPY --chown=1000:100 ./Notebook_Noe_Class.ipynb .
COPY --chown=1000:100 ./Uber_Noe_Airports.ipynb .
COPY --chown=1000:100 ./netflix_no_chill.ipynb .
COPY --chown=1000:100 ./[optional]_Getaround.ipynb .
COPY --chown=1000:100 ./[Livecode]_Airbnb New-York.ipynb .
COPY --chown=1000:100 ./[optional]_Heetch.ipynb .
