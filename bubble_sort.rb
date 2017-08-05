def bubble_sort(array)

end

puts bubble_sort([4,3,78,2,0,2])
# [0,2,2,4,78]


def bubble_sort_by(array)
	yield(argument1, argument2)
end

bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
	left.length - right.length
end
# ["hi", "hey", "hello"]