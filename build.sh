#!/bin/bash
set -e
rm -rf /docker_out/*
cd /app
./gradlew clean
./gradlew assembleDebug
git clean -f .
