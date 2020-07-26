require 'set'
require 'byebug'
class GraphNode

    attr_accessor :val, :neighbors
    def initialize(val)
        @val = val
        @neighbors = []
    end

    
    
end

def bfs(starting_node,value)
    visited = Set.new()
    arr = [starting_node]
    while !arr.empty?
        # debugger
        candidate = arr.shift
        return candidate if candidate.val == value
        visited.add(candidate)
        candidate.neighbors.each {|neighbor| arr.push neighbor if !visited.include?(neighbor) }
    end
    return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")