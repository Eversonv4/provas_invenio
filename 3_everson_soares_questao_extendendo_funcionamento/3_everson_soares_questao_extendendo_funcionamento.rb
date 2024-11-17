require 'active_support/core_ext/array'

class Array
	def second_element_from_last_to_first
		self[-2]
	end
end

puts [1, 2, 3, 4, 5].second_element_from_last_to_first # vai retornar o "4"
	