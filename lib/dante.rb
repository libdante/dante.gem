require "fileutils"
require "optparse"
require "yaml"
require "erb"
require "etc"


=begin

  Dante.run("process-name") do
    begin
      # ...something here
    rescue Interrupt
      # ...shutdown here
    end
  end

=end

module Dante
  require_relative "dante/version"
  require_relative "dante/runner"

  # Forks a process and handles option parsing and start/stopping.
  #
  # @example
  #   Dante.run("process-name") { Server.run! }
  #
  def self.run(name, options={}, &blk)
    Runner.new(name, options, &blk).execute
  end
end
