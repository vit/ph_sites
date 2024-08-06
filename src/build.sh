#!/bin/sh


rm -r public/*


hugo -D --config="sites/cap/hugo.toml"

hugo -D --config="sites/ipacs/hugo.toml"

hugo -D --config="sites/conf/hugo.toml"

