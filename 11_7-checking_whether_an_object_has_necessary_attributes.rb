class Object

  def must_have_instance_variables(*args)
    vars = instance_variables.inject({}) { |h, var| h[var] = true; h}
    args.each do |arg|
      raise ArgumentError ">> Instance variable #{arg} is not defined!" if vars.include?(arg)
    end
  end

end

module LightEmitting

  def LightEmitting_setup
    must_have_instance_variables :light_color, :light_density
    @on = false
  end

end

class Request
  include LightEmitting

  def gather_parameters
    raise NotImplementedError, "#{self.class}##{__method__} is not implemented!"
  end

  def initialize
    gather_parameters
    must_have_instance_variables :action, :user, :authentication
  end

end

class LightRequest < Request
  def send_request
    puts "Request sent!"
  end
end

l_request = LightRequest.new
l_request.send_request
