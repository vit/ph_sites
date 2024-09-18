# set -a
# . ./.env_default
# [ ! -f .env ] || . ./.env
# set +a

# (cd compose/config/ && . ./config.sh)


envsubst < compose/config/nginx/default-template.conf > compose/config/nginx/default.conf
envsubst < src/hugo-template.toml > src/hugo.toml


# printenv

