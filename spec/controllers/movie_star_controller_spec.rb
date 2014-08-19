require "rails_helper"

describe MovieStarsController do
  describe "POST /movie_stars" do
    let(:movie_star) do
      {
        name: "Sigourney Weaver",
        highest_grossing_film: "Avatar"
      }
    end

    it "creates a MovieStar" do
      count = MovieStar.count
      post :create, movie_star: movie_star.to_json
      expect(MovieStar.count).to eq(count + 1)
    end
  end
end
