#!/usr/bin/env ruby
KCODE='u'
require "kconv"
cmd = File.basename(__FILE__) +".exe " + $*.join('  ')
IO.foreach("| #{cmd} 2>&1 "){|line|puts line.kconv(Kconv::UTF8,Kconv::SJIS)}
