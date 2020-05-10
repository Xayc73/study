module Exercise
  module Arrays
    class << self
      def replace(array)
        max_val = array[0]
        array.each { |val| max_val = val if val > max_val }
        array.map! { |val| val.positive? ? max_val : val }
      end

      def search(_array, _query)
        0
      end
    end
  end
end
