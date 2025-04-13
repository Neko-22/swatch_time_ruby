# frozen_string_literal: true

# HEY THIS IS SUPER BROKEN DONT ACTUALLY USE THIS FOR TESTING MAKE YOUR OWN SUITE. personally i just uh. built the gem and tested in irb

require 'bundler/gem_tasks'
require 'standard/rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/test_*.rb']
end

desc 'Run tests'
task default: :standard
