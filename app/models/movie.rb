class Movie < ApplicationRecord
    CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Horror', 'Fantasy','Action','Documentary','Science Fiction']

    validates :title, presence: true
    validates :year, numericality: {
        greter_than_or_equal_to: 1880,
        less_than_or_equal_to: Date.today.year
    }

    validates :poster_url, presence: true
    validates :category, inclusion: {
        in: CATEGORIES,
        message: "must be one of: #{CATEGORIES.join(', ')}"
    }
end
