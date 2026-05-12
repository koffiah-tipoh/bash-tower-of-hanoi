#!/usr/bin/env bash
# Tower of Hanoi demo in Bash
# Recursive section: solve smaller subproblems

hanoi() {
  local n=$1 from=$2 to=$3 aux=$4

  if [ "$n" -eq 1 ]; then
    echo "Move disk 1 from $from to $to"
    return
  fi

  hanoi $((n-1)) "$from" "$aux" "$to"
  echo "Move disk $n from $from to $to"
  hanoi $((n-1)) "$aux" "$to" "$from"
}

# Main / driver
n=3
echo "Tower of Hanoi with $n disks"
hanoi "$n" A C B
