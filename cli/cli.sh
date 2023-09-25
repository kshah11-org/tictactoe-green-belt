echo -e "$(sf apex run -o test-mtrojax4yife@example.com -f cli/cli.apex | grep 'USER_DEBUG' | grep -Eo '".*"' | sed 's/&#124;/|/g')"
