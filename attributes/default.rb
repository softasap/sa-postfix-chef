# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default['sa-postfix']['name'] = 'Postfix'
default['sa-postfix']['postfix_domain'] = 'example.com'
default['sa-postfix']['postfix_hostname'] = 'example.com'

default['sa-postfix']['postfix_properties'] = [
  { regexp: '^myhostname =*', line: "myhostname = #{default['sa-postfix']['postfix_hostname']}" },
  { regexp: '^myorigin =*', line: 'myorigin = $mydomain' },
  { regexp: '^relayhost =*', line: 'relayhost = ' },
  { regexp: '^inet_interfaces =*', line: 'inet_interfaces = loopback-only' },
  { regexp: '^mydestination =*', line: 'mydestination = loopback-only' },
  { regexp: '^mydomain =*', line: "mydomain = #{default['sa-postfix']['postfix_domain']}" }
]

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).
