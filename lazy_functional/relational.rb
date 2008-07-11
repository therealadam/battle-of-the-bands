Dog = Struct.new(:name, :size, :color)

dogs = [Dog.new('Napoleon', :tweenie, :black_and_tan), 
        Dog.new('Thor', :standard, :black_and_tan),
        Dog.new('Fred', :tweenie, :red_dapple)]

dogs.select { |d| d.name == 'Napoleon' }.map { |d| d.name } # => ["Napoleon"]
dogs.partition { |d| d.size == :tweenie }.map { |sizes| sizes.map { |d| d.name } } # => [["Napoleon", "Fred"], ["Thor"]]
dogs.all? { |d| d.is_a?(Dog) } # => true

# Other "relational" methods: all?, any?, map/collect, detect, grep, inject, partition, reject, select, sort_by, uniq, zip
