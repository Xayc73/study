module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for item in self do
          yield(item)
        end
      end

      # Написать свою функцию my_map
      def my_map
        my_reduce(self.class.new) { |result, val| result.push(yield(val)) }
      end

      # Написать свою функцию my_compact
      def my_compact
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        my_each { |val| acc = acc.nil? ? val : yield(acc, val) }
        acc
      end
    end
  end
end
