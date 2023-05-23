#!/bin/sh
printf 'Compiling\r' &&
make ||
    (printf '\033[0;31mCompile failed\033[0m\n' && exit 1) &&
    printf '\033[0;32mCompile done\033[0m\n';
make clean
exec "$@"
