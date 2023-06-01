#!/bin/bash

az login --tenant $TENANT_ID | grep -v "Opening in existing browser session.">  "${az_account_details}" \
		&& echo "Logged into Azure" \
		|| echo "Failed to log into Azure"

az account set -s $SUBSCRIPTION_ID
