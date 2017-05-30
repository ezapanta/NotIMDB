class Movie < ActiveRecord::Base
  validates_uniqueness_of :title
  has_many :comments, :dependent => :destroy

  
  def self.search(query)
  
		where("title like ?", "%#{query}%") 
	end
	
	def self.searchFiltBoth(query, selGenre, selRating)
  
		where("title like ?", "%#{query}%").where("genre = :genre and rating  = :rating", {genre: selGenre, rating: selRating}) 
	end
	
	def self.searchFiltGenre(query, selGenre)
  
		where("title like ?", "%#{query}%").where("genre = :genre", {genre: selGenre}) 
	end
	
	def self.searchFiltRate(query, selRating)
  
		where("title like ?", "%#{query}%").where("rating  = :rating", {rating: selRating}) 
	end

	def self.filter(selGenre, selRating)
	  
		where("genre = :genre and rating  = :rating", {genre: selGenre, rating: selRating}) 

	end

	def self.filterGenre(selGenre)
	  
		where("genre = :genre", {genre: selGenre}) 

	end

	def self.filterRating(selRating)
	  
		where("rating  = :rating", {rating: selRating}) 

	end


end