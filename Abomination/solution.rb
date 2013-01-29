class Abomination < BasicObject
  attr_accessor :list_of_arguments

  def initialize(*arguments)
    @list_of_arguments = *arguments
  end

  def method_missing(method_name, *args, &block)
    if respond_to_missing(method_name)
      list_of_arguments.find { |argument| argument.respond_to? method_name }.send(method_name, *args, &block)
    else
      raise NoMethodError.new "undefined method #{method_name} for #{self}:Abomination"
    end
  end

  def respond_to_missing(method_name, include_method = true)
    list_of_arguments.any? { |argument| argument.respond_to? method_name }
  end

  def is_a?(klass)
    list_of_arguments.any? { |argument| argument.is_a? klass }
  end
end
