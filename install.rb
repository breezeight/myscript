#!/usr/bin/ruby
require 'fileutils'

INSTALL="install -m 755"
DESTDIR="/usr/local/bin"

prog_list = []
prog_list << "collaboratively"
prog_list << "my_chroot"
prog_list << "startVBox"



FileUtils.cd "local"

for program in prog_list do
  `#{INSTALL} #{program} #{DESTDIR}`
end

