class Maybe
  def self.wrap(object)
    if object
      Some.new(object)
    else
      None.new
    end
  end

  def respond_to?(method_name, include_private = false)
    super || @object.respond_to?(method_name, include_private)
  end

  def method_missing(method_name, *arguments, &block)
    value = nil
    if @object.respond_to?(method_name)
      value = @object.send(method_name, *arguments, &block)
    end

    self.class.wrap(value)
  end
end

class None < Maybe
  def value
    nil
  end
end

class Some < Maybe
  def initialize(object)
    @object = object
  end

  def value
    @object
  end
end
