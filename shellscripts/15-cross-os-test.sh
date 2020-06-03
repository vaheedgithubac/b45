#!/usr/bin/env bash

useradd test
journalctl -l | grep http | grep Jan
