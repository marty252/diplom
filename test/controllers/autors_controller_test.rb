require 'test_helper'

class AutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autor = autors(:one)
  end

  test "should get index" do
    get autors_url
    assert_response :success
  end

  test "should get new" do
    get new_autor_url
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post autors_url, params: { autor: { autor_id: @autor.autor_id, family_name: @autor.family_name, first_name: @autor.first_name, science_index: @autor.science_index, second_name: @autor.second_name, spin: @autor.spin, stat_id: @autor.stat_id } }
    end

    assert_redirected_to autor_url(Autor.last)
  end

  test "should show autor" do
    get autor_url(@autor)
    assert_response :success
  end

  test "should get edit" do
    get edit_autor_url(@autor)
    assert_response :success
  end

  test "should update autor" do
    patch autor_url(@autor), params: { autor: { autor_id: @autor.autor_id, family_name: @autor.family_name, first_name: @autor.first_name, science_index: @autor.science_index, second_name: @autor.second_name, spin: @autor.spin, stat_id: @autor.stat_id } }
    assert_redirected_to autor_url(@autor)
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete autor_url(@autor)
    end

    assert_redirected_to autors_url
  end
end
