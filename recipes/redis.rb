# node.set['redis']['default_settings']['client_output_buffer_limit'] = [
#  'normal 0 0 0',
#  'slave 0 0 0',
#  'pubsub 32mb 8mb 60'
# ]
socket = "/tmp/redis.sock"

node.set['redisio']['default_settings']['noappendfsynconrewrite'] = 'yes'

node.set['redisio']['default_settings']['unixsocket'] = socket
node.set['skyline']['redis_socket_path'] = socket

node.set['redisio']['default_settings']['unixsocketperm'] = 777

include_recipe 'redisio::install'
include_recipe 'redisio::enable'
