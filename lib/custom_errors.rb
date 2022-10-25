class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin
        raise PartnerError
      rescue PartnerError => error # The rescue method creates an instance of the PartnerError class and puts out the result of calling message on that instance
        puts error.message  
      end
    end
  end

  class PartnerError < StandardError # Define the custom error

    def message
      "you must give the get_married method an argument of an instance of the person class" # writing a Custom Error Message
    end

  end

end

beyonce = Person.new("Beyonce")
jay = Person.new("Z")
beyonce.get_married(jay)
puts beyonce.name




