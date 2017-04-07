items = 
module SortingAlgorithms
  class BubbleSort
    attr_reader :collection
    def initialize(collection)
      @collection = collection
    end
    def sort
      counter = 0
      while counter < collection.length
        left_index = 0
        right_index = 1

        while right_index < collection.length
          bubble_once(left_index, right_index)
          left_index += 1
          right_index += 1
        end

        counter += 1
      end
      p collection
    end
    def bubble_once(left_index, right_index)
      item_one = collection[left_index]
      item_two = collection[right_index]
      if item_two < item_one
        collection[left_index]  = item_two
        collection[right_index] = item_one
      end
    end 
  end
end
sorter = SortingAlgorithms::BubbleSort.new(["e", "a", "c", "b", "d"])
p sorter.collection
sorter.sort