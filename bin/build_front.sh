#!/bin/bash

PROJECT_ROOT="$(dirname "$(readlink -f "$0")")/.."

rm -rf "$PROJECT_ROOT/src/main/webapp/static"
rm -rf "$PROJECT_ROOT/src/main/webapp/*"

cd "$PROJECT_ROOT/front-UI"
npm run build
cp -R build/* "$PROJECT_ROOT/src/main/webapp"

cd "$PROJECT_ROOT"