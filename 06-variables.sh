#!/bin/bash

start_time=$(date)
echo "script executed at :: $timestamp"

sleep 10

end_time=$(date)
total_time=$(($end_time-$start_time))

echo"script executed in :: $total_time"