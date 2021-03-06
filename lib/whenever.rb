require 'chronic'
require 'active_support'

require 'whenever/job_list'
require 'whenever/job'
require 'whenever/cron'
require 'whenever/output_redirection'
require 'whenever/command_line'
require 'whenever/version'

module Whenever
  
  def self.cron(options)
    Whenever::JobList.new(options).generate_cron_output
  end
  
  def self.path
    Dir.pwd
  end

end
