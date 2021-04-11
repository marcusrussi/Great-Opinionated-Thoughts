#!/usr/bin/env bash

year=$1
month=$2

curl "https://api.nytimes.com/svc/archive/v1/$year/$month.json?api-key=YEc4lA75Nzo14LmVPr4TG1p0TXTKZe0i"
