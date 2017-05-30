json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :genre, :director, :actor1, :actor2, :actor3, :releaseyr, :rating, :description
  json.url movie_url(movie, format: :json)
end
