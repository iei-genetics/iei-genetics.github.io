#!/bin/bash
# bundle install

echo "getting newest table ... "
cp ~/web/iei_genetics/output/iusis_iei_table_2025.html ./assets/

bundle exec jekyll serve &
sleep 3

open -a Safari http://127.0.0.1:4000
