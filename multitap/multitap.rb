# Write a module that can calculate the amount of button presses required
# for any phrase. Punctuation can be ignored for this exercise. Likewise,
# you can assume the phone doesn't distinguish between upper/lowercase
# characters (but you should allow your module to accept input in either
# for convenience).
# ------- ------- -------
# |     | | ABC | | DEF |
# |  1  | |  2  | |  3  |
# ------- ------- -------
# ------- ------- -------
# | GHI | | JKL | | MNO |
# |  4  | |  5  | |  6  |
# ------- ------- -------
# ------- ------- -------
# |PQRS | | TUV | | WXYZ|
# |  7  | |  8  | |  9  |
# ------- ------- -------
# ------- ------- -------
# |     | |space| |     |
# |  *  | |  0  | |  #  |
# ------- ------- -------
LETTERS = { '1' => 1, '2' => 4, '3' => 4, '4' => 4, '5' => 4,
            '6' => 4, '7' => 4, '8' => 4, '9' => 4, '0' => 2,
            'A' => 1, 'B' => 2, 'C' => 3, 'D' => 1, 'E' => 2, 'F' => 3,
            'G' => 1, 'H' => 2, 'I' => 3, 'J' => 1, 'K' => 2, 'L' => 3,
            'M' => 1, 'N' => 2, 'O' => 3, 'P' => 1, 'Q' => 2, 'R' => 3, 'S' => 4,
            'T' => 1, 'U' => 2, 'V' => 3, 'W' => 1, 'X' => 2, 'Y' => 3, 'Z' => 4,
            '*' => 1, '#' => 1, ' ' => 1 }.freeze

def presses(phrase)
  count = 0
  phrase.upcase.each_char do |c|
    count += LETTERS[c]
  end
  count
end
