#!/bin/bash

output=$(./program.sh)
test "Hello, world!" = "$output"
exit $?

