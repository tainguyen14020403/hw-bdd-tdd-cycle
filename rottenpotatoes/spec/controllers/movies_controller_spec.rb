require 'rails_helper'

require 'rspec/its'

require 'spec_helper'

describe MoviesController do

  describe "add director to existing movie" do
    before do
      @movie = Movie.create()
      @movie.director = "Ridley Scott"
      @movie.save
    end
    subject { @movie }

    its(:director) { should eql "Ridley Scott" }
 
   end
   	describe 'finding movies by same director' do
		before :each do
			@movie_id = 10
			@founded = [double('a movie'), double('another one')]
			@fake_movie.stub(:director).and_return('fake director')
		end
			it 'should call Model method to get movies with same director' do
			Movie.should_receive(:find).with(@movie_id.to_s).and_return(@fake_movie)

			get :similar, {:id => @movie_id}
		end
   end
   
  #Unhappy path
end
