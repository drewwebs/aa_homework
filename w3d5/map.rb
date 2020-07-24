class Map
    def initialize
        @map = Array.new
    end

    def set(key,value)
        exists = false

        @map.each.with_index do |pair,idx|
            if pair[0] == key
                @map[idx][1] = value
                exists = true
            end
        end

        @map << [key,value] if exists == false
                
    end

    def get(key)
        @map.select {|ele| ele[0] == key}
    end

    def delete(key)
        @map.delete_if {|pair| pair[0] == key}
    end

    def show
        @map
    end

end