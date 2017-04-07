#!/bin/bash
set -e
rm -rf /docker_out/*
cd /app
./gradlew clean
./gradlew assembleDebug
cp -a ./build/outputs/apk/*.apk /docker_out
./gradlew clean
git clean -f .
