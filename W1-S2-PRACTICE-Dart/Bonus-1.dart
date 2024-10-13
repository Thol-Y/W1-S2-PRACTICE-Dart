class position{
  int x;
  int y;
  position(this.x, this.y);
}
enum Direction { north, east, south, west }

void main()
{
  int x = 4;
  int y = 1;
  Direction direction = Direction.north;

  const instructions = "AARAARALA";

  for(int i = 0; i < instructions.length; i++)
  {
    if(instructions[i] == "R")
    {
      switch(direction)
      {
        case Direction.north:
          direction = Direction.east;
          break;
        case Direction.east:
          direction = Direction.south;
          break;
        case Direction.south:
          direction = Direction.west;
          break;
        case Direction.west:
          direction = Direction.north;
          break;
      }
    }else if(instructions[i] == "L")
    {
      switch(direction)
      {
        case Direction.north:
          direction = Direction.west;
          break;
        case Direction.west:
          direction = Direction.south;
          break;
        case Direction.south:
          direction = Direction.east;
          break;
        case Direction.east:
          direction = Direction.north;
          break;
      }
    }else if(instructions[i] == "A")
    {
      switch(direction)
      {
        case Direction.north:
          y++;
          break;
        case Direction.east:
          x++;
          break;
        case Direction.south:
          y--;
          break;
        case Direction.west:
          x--;
          break;
      }
    }
  }

  print("Final position: ($x, $y)");
  print("Final direction: $direction");
}