#!/bin/bash

find ../ -name "*.pyc" | xargs rm -f

export PYTHONPATH=../
coverage --version
echo "----------------------------------"
coverage run --rcfile=../.coveragerc  ./test_everything.py
echo "----------------------------------"
coverage report
rm -f .coverage

