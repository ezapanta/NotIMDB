class AddPurchaseLinkToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :purchase_link, :text
  end
end
