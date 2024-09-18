

envsubst < nginx/default-template.conf > nginx/default.conf


# cat config/nginx/default-template.conf \
#     | envsubst '$$COMS_DOMAIN_NAME' \
#     > config/nginx/default.conf



