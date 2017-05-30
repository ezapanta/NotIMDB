class AddViewableToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :viewable, :boolean, default: false
  end
end
