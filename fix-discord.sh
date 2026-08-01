#!/bin/sh
# Fixes Discord flickering when using non-standard hardware acceleration methods
#
# moves current discord executable script to free up name
sudo mv /usr/bin/discord /usr/bin/discord-real

# writes new executable script which uses the `--use-gl=desktop` flag to prevent discord from using faulty hardware accelration APIs
sudo tee /usr/bin/discord >/dev/null <<'EOF'
#!/bin/sh
exec /usr/bin/discord-real --use-gl=desktop "$@"
EOF
sudo chmod +x /usr/bin/discord
