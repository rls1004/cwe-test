#!/usr/bin/env bash
dirs="$(ls -d CWE*/)"

for dir in $dirs
do
  if [ -d "${dir}" ]; then
    echo "${dir}"
    cd "${dir}/src" && make
    cd ../../
  fi
done
