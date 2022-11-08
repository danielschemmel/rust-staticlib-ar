#!/bin/bash
set -euo pipefail

rm -f direct combined.a indirect

cargo build
gcc -g3 -Itarget/debug/include main.c target/debug/librustlib.a -o direct

ar -rcT combined.a target/debug/librustlib.a
gcc -g3 -Itarget/debug/include main.c combined.a -o indirect