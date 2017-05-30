class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :director
      t.string :actor1
      t.string :actor2
      t.string :actor3
      t.integer :releaseyr
      t.integer :rating
      t.text :description

      t.timestamps null: false
    end
  end
end
