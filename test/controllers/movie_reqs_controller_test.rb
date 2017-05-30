require 'test_helper'

class MovieReqsControllerTest < ActionController::TestCase
  setup do
    @movie_req = movie_reqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_reqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_req" do
    assert_difference('MovieReq.count') do
      post :create, movie_req: { actor1: @movie_req.actor1, actor2: @movie_req.actor2, actor3: @movie_req.actor3, description: @movie_req.description, director: @movie_req.director, genre: @movie_req.genre, rating: @movie_req.rating, releaseyr: @movie_req.releaseyr, title: @movie_req.title }
    end

    assert_redirected_to movie_req_path(assigns(:movie_req))
  end

  test "should show movie_req" do
    get :show, id: @movie_req
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_req
    assert_response :success
  end

  test "should update movie_req" do
    patch :update, id: @movie_req, movie_req: { actor1: @movie_req.actor1, actor2: @movie_req.actor2, actor3: @movie_req.actor3, description: @movie_req.description, director: @movie_req.director, genre: @movie_req.genre, rating: @movie_req.rating, releaseyr: @movie_req.releaseyr, title: @movie_req.title }
    assert_redirected_to movie_req_path(assigns(:movie_req))
  end

  test "should destroy movie_req" do
    assert_difference('MovieReq.count', -1) do
      delete :destroy, id: @movie_req
    end

    assert_redirected_to movie_reqs_path
  end
end
