require 'test_helper'

class MovieStarsControllerTest < ActionController::TestCase
  setup do
    @movie_star = movie_stars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_stars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_star" do
    assert_difference('MovieStar.count') do
      post :create, movie_star: { highest_grossing_film: @movie_star.highest_grossing_film, name: @movie_star.name }
    end

    assert_redirected_to movie_star_path(assigns(:movie_star))
  end

  test "should show movie_star" do
    get :show, id: @movie_star
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_star
    assert_response :success
  end

  test "should update movie_star" do
    patch :update, id: @movie_star, movie_star: { highest_grossing_film: @movie_star.highest_grossing_film, name: @movie_star.name }
    assert_redirected_to movie_star_path(assigns(:movie_star))
  end

  test "should destroy movie_star" do
    assert_difference('MovieStar.count', -1) do
      delete :destroy, id: @movie_star
    end

    assert_redirected_to movie_stars_path
  end
end
