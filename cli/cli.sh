echo -e "$(sf apex run -o test-uhre9wjpoksd@example.com -f cli/cli.apex | grep 'USER_DEBUG' | grep -Eo '".*"' | sed 's/&#124;/|/g')"
