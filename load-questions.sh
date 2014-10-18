#!/bin/bash
echo "Loading JSon Dump"
cd datasources
wget http://dierentheater.be/static/dumps/writtenquestion.xz
echo "Unxz'ing"
unxz writtenquestion.xz
echo "Loading SQLLite Dump"
wget http://dierentheater.be/static/other/question.db.xz
echo "unxz'ing"
unxz question.db.xz
cd ..
echo "Loading Deputies JSon"
wget http://dierentheater.be/static/dumps/deputy.xz
unxz deputy.xz
echo "Done."

