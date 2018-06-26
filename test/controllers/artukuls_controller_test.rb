require 'test_helper'

class ArtukulsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artukuls_index_url
    assert_response :success
  end

  test "should get nowy" do
    get artukuls_nowy_url
    assert_response :success
  end

  test "should get edycja" do
    get artukuls_edycja_url
    assert_response :success
  end

  test "should get usun" do
    get artukuls_usun_url
    assert_response :success
  end

  test "should get pokaz" do
    get artukuls_pokaz_url
    assert_response :success
  end

end
