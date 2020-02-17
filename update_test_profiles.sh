#!/bin/bash

test_profiles=$(calibre site test-profiles --site=$1 | awk 'NR>3{print $1}')
site_slug=$1
cookie_jar_file=$2

for profile_id in $test_profiles
do
  calibre site update-test-profile --uuid=$profile_id --cookie-jar=$cookie_jar_file --javascript=false --site=$site_slug
done
