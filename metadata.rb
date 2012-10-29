maintainer "Mark Friedenbach"
maintainer_email "mark@monetize.io"
license "Apache 2.0"
description "Installs and configures postgresql-pgmp extension."
version "0.0.1"
recipe "postgresql-pgmp", "Installs packages required for PostgreSQL to support multi-precision integers and rational types."

%w{ ubuntu debian fedora suse }.each do |os|
  supports os
end

%w{redhat centos scientific}.each do |el|
  supports el, ">= 6.0"
end

depends "apt"
depends "postgresql"
