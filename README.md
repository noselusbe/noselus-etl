ETL for NosElus.be
==================

You need a [PharoVM](http://get.pharo.org)

Take the 3.0.

    curl get.pharo.org | bash

You need to have the SQLite3 and PostgresV2 and JSON packages.

TODO: script to load all of this to be provided.

Then

## Loading data

    ./load-questions.sh

## Running the importer

    pharo NosElus.image ImportLaChambre.st


