def bubble_sort(array)
	sorted = false
	while sorted == false
		temp = array.clone
		array.each_index { |i| array[i], array[i + 1] = array[i + 1], array[i] if i < array.length - 1 && array[i] > array[i + 1] }
		sorted = true if temp == array
	end
	array
end

puts bubble_sort([4,3,78,2,0,2])
# [0,2,2,4,78]



def bubble_sort_by(array)
	sorted = false
	while sorted == false
		temp = array.clone
		array.each_index do |i|
			if i < array.length - 1
				if yield(array[i], array[i+1]) > 0
					array[i], array[i+1] = array[i+1], array[i]
				end
			end
		end
		sorted = true if temp == array
	end
	array
end

solution = bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
	left.length - right.length
end
# ["hi", "hey", "hello"]

puts solution