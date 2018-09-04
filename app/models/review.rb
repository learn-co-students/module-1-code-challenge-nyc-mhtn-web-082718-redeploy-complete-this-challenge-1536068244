class Review

    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, content, rating)
      @customer = customer
      @restaurant = restaurant
      @content = content
      @rating = rating
      @@all << self
    end

    def self.all
      @@all
    end

    def reviewer
      @@all.each do |reviews|
        if reviews == self
          return reviews.customer
        end
      end
    end

    def review_restaurant
      restaurant_name = []
      @@all.select do |reviews|
        if reviews == self
          # restaurant_name << reviews.restaurant
          return reviews.restaurant
        end
      end
      # restaurant_name
    end

    def review_rating
      @@all.select do |reviews|
        if reviews == self
          return reviews.rating
        end
      end
    end

    def review_content
      @@all.select do |reviews|
        if reviews == self
          return reviews.content
        end
      end
    end

end
