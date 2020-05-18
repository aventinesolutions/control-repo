class role::master_server {
  include profile::base
  include profile::r10k
  include profile::agent_nodes
}
