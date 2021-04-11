#!/usr/bin/env bash

jq '.response.docs | map({headline, section_name}) | map(select(.section_name == "Opinion")) | map(.headline.main)'
