module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        map_array = array.reject { |film| film['rating_kinopoisk'].nil? }
                         .reject { |film| film['rating_kinopoisk'].to_f.zero? }
                         .reject { |film| film['country'].nil? }
                         .select { |film| film['country'].split(/,/).length >= 2 }
                         .map { |film| film['rating_kinopoisk'].to_f }
        map_array.reduce(:+) / map_array.length
      end

      def chars_count(_films, _threshold)
        0
      end
    end
  end
end
