echo -e "$(sf apex run -o test-hjawoxoxbzut@example.com -f cli/cli.apex | grep 'USER_DEBUG' | grep -Eo '".*"' | sed 's/&#124;/|/g')"
