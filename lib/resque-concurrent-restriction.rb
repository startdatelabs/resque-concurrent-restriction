require 'resque'
require 'resque/plugins/concurrent_restriction/version'
require 'resque/plugins/concurrent_restriction/resque_worker_extension'
require 'resque/plugins/concurrent_restriction/concurrent_restriction_job'

Resque::Worker.send(:include, Resque::Plugins::ConcurrentRestriction::Worker)
Resque::Job.send(:extend, Resque::Plugins::ConcurrentRestriction::Job)

