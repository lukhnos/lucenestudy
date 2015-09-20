#!/bin/bash -e

# TODO: Parameterize, error checking, temp file, etc.
VERSION=0.9.8.1-20150920-24f9bc5
FILE=j2objc-$VERSION.zip
URL=https://github.com/lukhnos/j2objc/releases/download/$VERSION/$FILE
DIR=j2objc-$VERSION
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
rm -f "${OBJCLUCENE_VENDOR}/j2objc"
ln -s "${PWD}/${TARGET}/j2objc" "${OBJCLUCENE_VENDOR}/j2objc"

