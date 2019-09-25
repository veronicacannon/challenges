# cross the desert the smart way
# keep only directions that aren't cancelled out
# [NORTH, SOUTH, EAST] = [EAST] as north and south cancel each other
PAIRS = {
  'NORTH' => 'SOUTH', 'SOUTH' => 'NORTH',
  'EAST' => 'WEST',   'WEST' => 'EAST'
}
def reduce_directions(arr)
  stack = []
  arr.each do |cardinal|
    PAIRS[cardinal] == stack.last ? stack.pop : stack.push(cardinal)
  end
  stack
end
