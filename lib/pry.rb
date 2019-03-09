require 'pp'
require 'pry/forwardable'
require 'pry/input_lock'
require 'pry/exceptions'
require 'pry/helpers/base_helpers'
require 'pry/hooks'

class Pry
  DEFAULT_SYSTEM = proc do |output, cmd, _|
    unless system(cmd)
      output.puts "Error: there was a problem executing system command: #{cmd}"
    end
  end

  # This is to keep from breaking under Rails 3.2 for people who are doing that
  # IRB = Pry thing.
  module ExtendCommandBundle; end
end

require 'method_source'
require 'shellwords'
require 'stringio'
require 'strscan'
require 'coderay'
require 'pry/slop'
require 'rbconfig'
require 'tempfile'
require 'pathname'

require 'pry/version'
require 'pry/last_exception'
require 'pry/input_completer'
require 'pry/repl'
require 'pry/code'
require 'pry/ring'
require 'pry/helpers'
require 'pry/code_object'
require 'pry/method'
require 'pry/wrapped_module'
require 'pry/history'
require 'pry/command'
require 'pry/command_set'
require 'pry/commands'
require 'pry/plugins'
require 'pry/core_extensions'
require 'pry/basic_object'
require "pry/prompt"
require 'pry/config/lazy'
require 'pry/config/behavior'
require 'pry/config/convenience'
require 'pry/config'
require 'pry/pry_class'
require 'pry/pry_instance'
require 'pry/cli'
require 'pry/color_printer'
require 'pry/pager'
require 'pry/terminal'
require 'pry/editor'
require 'pry/rubygem'
require "pry/indent"
require "pry/inspector"
require 'pry/object_path'
require 'pry/output'
