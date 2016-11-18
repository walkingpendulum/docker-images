#! /bin/bash

rm -rf venv/
./setup-dev.sh

venv/bin/python -m fabric test
