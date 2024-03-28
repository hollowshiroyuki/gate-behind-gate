#! /usr/bin/env bash

COMPOSE="docker compose"

$COMPOSE -f gate-a/server-a/compose.yml down
$COMPOSE -f gate-b/server-b/compose.yml down
$COMPOSE -f gate-a/compose.yml down
$COMPOSE -f gate-b/compose.yml down
$COMPOSE -f compose.yml down
