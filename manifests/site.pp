node default {
}
node 'master.puppet.com' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
node 'nagios.puppet.com' {
  include profile::base
}
