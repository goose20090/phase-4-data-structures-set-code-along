class MySet

    attr_accessor :hash

    def initialize enumerable = []
        @hash = {}
        enumerable.each do |value|
            hash[value] = true
        end
    end

    def include? value
        hash.has_key?(value)
    end

    def add value
        hash[value] = true
        self
    end 

    def delete value
        hash.delete(value)
        self
    end

    def size
        hash.size
    end
    
    def self.[](*args)
        new(args)
    end

    def clear 
        hash.clear
        self
    end

    def each 
        hash.each_key {|key| yield key}
        self
    end

    def inspect
        elements = hash.keys.map(&:to_s).join(', ')
        puts( "#<MySet: {#{elements}}>" )
        "#<MySet: {#{elements}}>"
    end

end