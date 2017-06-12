# Conway's game of live
Ruby + rspec

## The Rules
1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## The file structure
```
├── app.rb
├── lib
│   └── cell.rb
└── spec
    ├── cell_spec.rb
    └── spec_helper.rb
```
    
## example code

```ruby
alive_neighbor = Cell.new(:dead => false)
dead_neighbor = Cell.new(:dead => true)

target_cell = Cell.new(
  :dead => true
  :neighbors => [alive_neighbor, dead_neighbor]
)

target_cell.step! #=> should in theory set the new _dead_ state based on its neighbors
```
    
## The objective
1. test drive the implementation of these 4 rules
