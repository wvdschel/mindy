Module: dylan-user

// This is a quick and dirty imitation of Microsoft's Minesweeper
// game.  It has a few improvements--it can do much of the tedious
// work for you!  For various reasons, initializing the game board
// takes forever, but play is reasonably quick once everything's set
// up.

define library minesweeper
  use dylan;
  use tk;
  use string-extensions;
  use io;
  use random;
end library minesweeper;

define module minesweeper
  use dylan;
  use extensions;
  use tk;
  use tk-extension, import: { tk-quote, call-tk-function };
  use string-conversions;
  use streams, import: {force-output};
  use format;
  use standard-io;
  use random;
end module minesweeper;
