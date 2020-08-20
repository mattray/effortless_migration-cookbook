# Effortless Migration Cookbook

The [Effortless](https://docs.chef.io/effortless/) pattern for Chef is a way to better manage Chef Infra and Chef InSpec workloads using Chef Habitat. For users already using the Chef Infra client and InSpec through the audit cookbook, this cookbook provides transitional steps to help incrementally migrate to this pattern.

## Prerequisites

Given that Habitat currently only supports Linux and Windows, we are restricted to those platforms. The cookbook is meant to help users migrate from older versions of Chef Infra client (12 and up), but they will need to use Policyfiles in conjunction with [Effortless Config](https://docs.chef.io/effortless/effortless_config/).

## Recipes

### Default

The `default` recipe installs the Habitat supervisor and configures it to report to Automate. The

## Effortless Audit

When migrating to Effortless Audit, the `node['audit']['profiles']` will be  associated with the

Example Habitat plan


## Effortless Config


## Effortless Bootstrap


the tests will take the existing attributes used by audit to populate the effortless-audit

effortless-infra
test 12,13,14,15,16 to effortless-16
verify

clean up chef_server_url
