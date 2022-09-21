class Person
  def initialize(args)
    args.each { |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    }
  end
end
