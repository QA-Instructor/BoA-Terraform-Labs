#! /usr/bin/python3
import json
from argparse import ArgumentParser

parser = ArgumentParser()
parser.add_argument('keyfile')

args = parser.parse_args()

with open(args.keyfile, "r") as keyfile:
  key = keyfile.read()

with open("data.json", "w") as out:
  data = {"data": {"sshkey": key}}
  json.dump(data, out)
