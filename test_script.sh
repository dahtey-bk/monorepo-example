#!/bin/bash

CUSTOM_CYPRESS_ENV_JSON=""

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --custom-cypress-env-json)
            CUSTOM_CYPRESS_ENV_JSON="$2"
            shift # past argument
            shift # past value
            ;;
        *)
            echo "Unknown option: $1" >&2
            exit 1
            ;;
    esac
done

if [ -n "$CUSTOM_CYPRESS_ENV_JSON" ]; then
    echo "Received custom Cypress environment JSON: $CUSTOM_CYPRESS_ENV_JSON"
    # In a real scenario, you would then pass this to Cypress, e.g.:
    # cypress run --env "$CUSTOM_CYPRESS_ENV_JSON"
else
    echo "No custom Cypress environment JSON provided."
fi

exit 0
