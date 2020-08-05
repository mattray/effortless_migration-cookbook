# A name that describes what the system you're building with Chef does.
name 'effortless_migration'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'effortless_migration::default'

# Specify a custom source for a single cookbook:
cookbook 'effortless_migration', path: '.'
