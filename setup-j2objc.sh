#!/bin/bash -e

# TODO: Parameterize, error checking, temp file, etc.
VERSION=1.0.2
FILE=j2objc-$VERSION.zip
URL=https://github.com/google/j2objc/releases/download/$VERSION/$FILE
#URL=https://github.com/lukhnos/j2objc/releases/download/$VERSION/$FILE
DIR=j2objc-$VERSION
TARGET=vendor/j2objc

echo Fetching ${URL}
curl -L -o "${FILE}" "${URL}"

echo Unzipping ${FILE}
unzip "${FILE}"

echo Remove old ${TARGET} directory
rm -rf "${TARGET}"

echo Rename ${DIR} into ${TARGET}
mv "${DIR}" "${TARGET}"

echo Moving ${FILE} archive to ${TARGET}
mv "${FILE}" "${TARGET}"

echo Making j2objc available to the objclucene submodule
OBJCLUCENE_VENDOR="${PWD}/vendor/objclucene/vendor"
mkdir -p "${OBJCLUCENE_VENDOR}"
rm -f "${OBJCLUCENE_VENDOR}/j2objc"
ln -s "${PWD}/${TARGET}" "${OBJCLUCENE_VENDOR}/j2objc"
