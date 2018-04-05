
if defined? PryByebug
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

begin
  require 'pry-coolline'
rescue LoadError
end

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
end

# if defined? Hirb
#   # Slightly dirty hack to fully support in-session Hirb.disable/enable toggling
#   Hirb::View.instance_eval do
#     def enable_output_method
#       @output_method = true
#       @old_print = Pry.config.print
#       Pry.config.print = proc do |output, value|
#         Hirb::View.view_or_page_output(value) || @old_print.call(output, value)
#       end
#     end
#
#     def disable_output_method
#       Pry.config.print = @old_print
#       @output_method = nil
#     end
#   end
#
#   Hirb.enable
# end

Pry.config.color = true

Pry.config.prompt = proc do |obj, nest_level, _pry_|
  version = ''
  version << "\001\e[0;31m\002" << "[#{RUBY_VERSION}]" << "\001\e[0m\002"
  version << "\001\e[0;32m\002" << "[#{Rails::VERSION::STRING}]" << "\001\e[0m\002" if defined?(Rails)

  "\001\e[0;35m\002(*^o^)\001\e[0m\002#{version} #{Pry.config.prompt_name}(#{Pry.view_clip(obj)})> "
end

