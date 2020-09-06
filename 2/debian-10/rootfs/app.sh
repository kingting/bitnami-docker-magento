# Copy the app extensions into the magento root directory #
cp -r app /opt/bitnami/magento/htdocs

# Register the extensions #
/opt/bitnami/magento/htdocs/bin/magento setup:upgrade

# Recompile #
/opt/bitnami/magento/htdocs/bin/magento setup:di:compile

# Enable the extension and clear static view files #
/opt/bitnami/magento/htdocs/bin/magento setup:static-content:deploy en_AU -f

## Clean the cache #
/opt/bitnami/magento/htdocs/bin/magento cache:clean
