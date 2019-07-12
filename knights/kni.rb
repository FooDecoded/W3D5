require_relative "polytreenode"
# PolyTreeNode
class KnightPathFinder

    def initialize(starting_pos)
        @root_position = starting_pos
        @root_node = PolyTreeNode.new(starting_pos)
        @considered_positions = [@root_node]
        self.build_move_tree
        
    end

    def build_move_tree 
        # array 8 * 8
        # with each position we can make 8 moves
        # each move has to be within the grid 
        # and 
        until 


    end 
    def self.valid_moves(pos)
        x, y = pos
        positions = [[x+2, y+1], [x+2, y-1]
                     [x-2, y+1], [x-2, y-1]
                     [x+1, y+2], [x-1, y+2]
                     [x+1, y-2], [x-1, y-2]]
        
        positions.select do |position|
            position[0] < 8 && position[1] <8
        end
    end

    def new_move_positions(pos)
        valid_positions = KnightPathFinder.valid_moves(pos)
        valid_positions.select { |position| !@considered_positions.include?(position) }
    end
end
