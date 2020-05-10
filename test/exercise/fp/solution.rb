module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        map_array = array.select { |film| !film['rating_kinopoisk'].to_f.zero? && film['country'].to_s.split(/,/).length >= 2 }
                         .map { |film| film['rating_kinopoisk'].to_f }
        map_array.reduce(:+) / map_array.length
      end

      def chars_count(films, threshold)
        map_array = films.select { |film| film['rating_kinopoisk'].to_f >= threshold }
                         .map { |film| film['name'].count('и') }
        map_array.reduce(:+)
      end
    end
  end
end
