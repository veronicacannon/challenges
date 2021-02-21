# Create a function that transforms a string of upvote counts
# into an array of numbers. Each k represents a thousand.
def transform_upvotes(str)
	str.split.map{ |s| eval(s.sub('k', '*1000')).to_i }
end