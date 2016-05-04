class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.same_directors d
    @movies = Movie.where(:director => d)
  end
end
