#! /usr/bin/env bash

COMPOSE="docker compose"

$COMPOSE -f compose.yml up -d
$COMPOSE -f gate-a/compose.yml up -d
$COMPOSE -f gate-b/compose.yml up -d
wget https://github.com/OKTW-Network/FabricProxy-Lite/releases/download/v2.7.0/FabricProxy-Lite-2.7.0.jar \
	-P gate-a/server-a/data/mods/
$COMPOSE -f gate-a/server-a/compose.yml up -d
$COMPOSE -f gate-b/server-b/compose.yml up -d
