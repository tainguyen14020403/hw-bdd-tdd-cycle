require 'spec_helper'

require 'rails_helper'

require 'rspec/its'
describe Movie do

  describe "add director to existing movie" do
    before do
      @movie = Movie.create()
      @movie.director = "Ridley Scott"
      @movie.save
    end
    subject { @movie }

    its(:director) { should eql "Ridley Scott" }
  end
    describe "find movie with same director" do
      before do
         Movie.create(:title => "star_wars", :director => "Ridley Scott")
         Movie.create(:title => "blade_runner", :director => "Ridley Scott")
         Movie.create(:title => "thx", :director => "Ridley Scott")
      end
      @movies = Movie.same_directors("Ridley Scott")
      @movies.each do |movie|
          assert movie.id == 0 && movie.title == "star_wars" || movie.id == 1 && movie.title == "blade_runner" || movie.id == 2 && movie.title == "thx"
      end
  end
end