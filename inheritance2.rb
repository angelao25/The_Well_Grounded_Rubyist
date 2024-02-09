class Person
  def species
    "Homo Sapiens"
  end
end

class Rubyist < Person

end

david = Rubyist.new
puts david.species
