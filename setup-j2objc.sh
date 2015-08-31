#!/bin/bash -e

# TODO: Parameterize, error checking, temp file, etc.
URL=https://github.com/lukhnos/j2objc/releases/download/0.9.8.1-20150829-2c1855d/j2objc-0.9.8.1-20150829-2c1855d.zip
FILE=j2objc-0.9.8.1-20150829-2c1855d.zip
DIR=j2objc-0.9.8.1-20150829-2c1855d
TARGET=vendor

echo Fetching ${URL}
curl -L -o "${FILE}" "${URL}"

echo Creating dir ${TARGET}
mkdir -p "${TARGET}"

echo Unzipping ${FILE}
unzip "${FILE}"

echo Moving ${DIR} to ${TARGET}/j2objc
mv "${DIR}" "${TARGET}/j2objc"

echo Making j2objc available to the objclucene submodule
OBJCLUCENE_VENDOR=vendor/objclucene/vendor
mkdir -p "${OBJCLUCENE_VENDOR}"
ln -s "${PWD}/${TARGET}/j2objc" "${OBJCLUCENE_VENDOR}/j2objc"

