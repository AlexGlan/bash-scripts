#!/bin/bash
#
# Display system uptime information

show_uptime() {
    local uptime=$(uptime -p | cut -c4-)
    local run_since=$(uptime -s | cut -c6-)

    cat << EOF
System been up for ${uptime}
Running from ${run_since}
EOF
}
show_uptime