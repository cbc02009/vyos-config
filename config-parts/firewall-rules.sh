# Rule to accept established and related
set firewall ipv4 name CONN_FILTER default-action 'return'
set firewall ipv4 name CONN_FILTER rule 10 action 'accept'
set firewall ipv4 name CONN_FILTER rule 10 state established
set firewall ipv4 name CONN_FILTER rule 10 state related

# Rule to drop invalid and log
set firewall ipv4 name CONN_FILTER rule 20 action 'drop'
set firewall ipv4 name CONN_FILTER rule 20 state invalid
set firewall ipv4 name CONN_FILTER rule 20 log