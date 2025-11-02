#!/bin/bash

esbuild packages/mjml-browser/lib/index.js --bundle --format=esm --outfile=mjml-browser.esm.js --platform=browser
