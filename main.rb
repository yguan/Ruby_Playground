require_relative 'selection_sort.rb'

selectionSort = SelectionSort.new
list = [5,3,2,9,0]
selectionSort.sort(list)
puts list.join(', ')
