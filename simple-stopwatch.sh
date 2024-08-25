#!/bin/bash

echo "Simple Stopwatch"
echo "Press [ENTER] to start, [ENTER] again to stop."

read start_time
start_time=$(date +%s)

echo "Stopwatch started. Press [ENTER] to stop."

read end_time
end_time=$(date +%s)

elapsed=$((end_time - start_time))

echo "Elapsed time: $elapsed seconds"
