# Replaces the webhook url in the scripts with the one provided as an arg
cat notify_build_failed.sh.dist | sed 's~^.*services\/[\/[a-zA-Z0-9]*]*~'"$1"'~g' > notify_build_failed.sh;
cat notify_build_succeeded.sh.dist | sed 's~^.*services\/[\/[a-zA-Z0-9]*]*~'"$1"'~g' > notify_build_succeeded.sh;
chmod +x notify_build_failed.sh;
chmod +x notify_build_succeeded.sh;
