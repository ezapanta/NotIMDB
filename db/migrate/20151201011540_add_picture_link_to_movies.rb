class AddPictureLinkToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :picture_link, :text
  end
end
