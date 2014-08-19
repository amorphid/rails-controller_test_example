class CreateMovieStars < ActiveRecord::Migration
  def change
    create_table :movie_stars do |t|
      t.string :name
      t.string :highest_grossing_film

      t.timestamps
    end
  end
end
