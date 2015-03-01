ETL for NosElus.be
==================

You need a [PharoVM](http://get.pharo.org)

Take the 3.0.

    curl get.pharo.org | bash

You need to have the SQLite3 and PostgresV2 and JSON packages.

The CentOS VM is at:

(http://files.pharo.org/vm/pharo/linux/centos/latest.zip)

For SQLite3 (not needed as the pharo-vm/ folder contains it already when cloning).

    sudo yum install sqlite3.i686


TODO: script to load all of this to be provided.

Then

## Loading data

    ./load-questions.sh

## Running the importer

    pharo NosElus.image ImportLaChambre.st


