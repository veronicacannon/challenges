# Create a function that transforms sentences ending with multiple
# question marks ? or exclamation marks ! into a sentence only ending with one.
# Only change ending punctuation; keep the exclamation marks or question marks
# in the middle of the sentence the same (see third example).
# Don't worry about mixed punctuation (no cases that end in something like ?!?).
# Keep sentences that do not have question/exclamation marks the same.
def no_yelling(phrase)
  phrase.gsub(/[.?!]*(?=[.?!]$)/, '')
end
