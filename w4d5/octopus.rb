
def sluggish_octopus(arr)
    longest_fish = ""
    arr.each_with_index do |fish1,idx1|
        arr.each_with_index do |fish2,idx2|
            if fish2.length > fish1.length
                longest_fish = fish2 if fish2.length > longest_fish.length
            end
        end
    end
    longest_fish
end

def merge_sort(arr)
    middle = arr.length / 2
    return arr if arr.length <= 1
    left = arr.take(middle)
    right = arr.drop(middle)

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    
    sorted = merge(sorted_left,sorted_right)
end

def merge(left,right)
    prc = Proc.new {|f1,f2| f1.length <=> f2.length}

    sorted = []

    until left.empty? || right.empty?
        prc.call(left.first,right.first) <= 0 ? sorted << left.shift : sorted << right.shift
    end

    sorted + left + right
end

def dominant_octopus(arr)
    merge_sort(arr).last
end

def clever_octopus(arr)
    longest_fish = ""

    arr.each {|fish| longest_fish = fish if fish.length > longest_fish.length}
    longest_fish
end

fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_octopus(fish_array)

p dominant_octopus(fish_array)

p clever_octopus(fish_array)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(move,arr)
    arr.each_with_index {|tent_num,idx| return idx if tent_num == move}
end

p slow_dance("up", tiles_array)

p slow_dance("right-down", tiles_array)

tiles_hash = { 
     "up" => 0, 
     "right-up" => 1, 
     "right" => 2, 
     "right-down" => 3, 
     "down" => 4, 
     "left-down" => 5, 
     "left" => 6,  
     "left-up" => 7 
}

def fast_dance(move,hash)
    hash[move]
end

p fast_dance("up", tiles_hash)

p fast_dance("right-down", tiles_hash)