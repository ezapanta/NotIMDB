class AddVideoLinkToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :video_link, :text
  end
end
