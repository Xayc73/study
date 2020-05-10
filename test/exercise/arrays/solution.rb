module Exercise
  module Arrays
    class << self
      def replace(array)
        max_val = array[0]
        array.each { |val| max_val = val if val > max_val }
        array.map! { |val| val.positive? ? max_val : val }
      end

      def search(array, query)
        binary_search(array, query, 0, array.length - 1)
      end

      def binary_search(array, query, first, last)
        return -1 if array.empty?

        index = (first + (last - first) / 2).to_i

        return index if array[index] == query

        return -1 if first == last

        if array[index] > query
          binary_search(array, query, first, index)
        else
          binary_search(array, query, index + 1, last)
        end
      end
    end
  end
end
