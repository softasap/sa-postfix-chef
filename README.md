sa-postfix , chef edition
=========================

[![Build Status](https://travis-ci.org/softasap/sa-postfix-chef.svg?branch=master)](https://travis-ci.org/softasap/sa-postfix-chef)

Interested in Ansible play? Check here: [![sa-postfix](https://travis-ci.org/softasap/sa-postfix-chef.svg?branch=master)](https://github.com/softasap/sa-postfix)


Example of use: check box-example

Simple:

```ruby

include_recipe 'sa-postfix::default'

```


Advanced:

```ruby

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


...


include_recipe 'sa-postfix::default'


```


see box-example folder of the repo for standalone deployment


# Misc hints

To check, it actually sends - check

```shell

echo "This is the body of the email" | mail --debug-level 10 -s "This is the subject line" your_email_address

```

And check in /var/log/mail.log. In 2016 with 98% mails will be rejected by +- known mail providers

Note, that by default you have major chances, that sent mail will finish it's line in SPAM.  Configuring your MTA & DNS is out of scope for this role.


Copyright and license
---------------------

Copyright - Vyacheslav Voronenko

Code licensed under the [BSD 3 clause] (https://opensource.org/licenses/BSD-3-Clause) or the [MIT License] (http://opensource.org/licenses/MIT).

Subscribe for roles updates at [FB] (https://www.facebook.com/SoftAsap/)
