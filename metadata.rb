name 'sa-postfix-chef'
maintainer 'Vyacheslav Voronenko'
maintainer_email 'git@voronenko.info'
license 'MIT'
description 'Installs/Configures postfix'
long_description 'Installs/Configures postfix'
version '0.1.5'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
issues_url 'https://github.com/softasap/sa-postfix-chef/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://github.com/softasap/sa-postfix-chef' if respond_to?(:source_url)

depends 'lineinfile', '~> 0.0.1'
