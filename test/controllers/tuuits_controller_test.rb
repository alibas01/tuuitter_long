require "test_helper"

class TuuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuuit = tuuits(:one)
  end

  test "should get index" do
    get tuuits_url
    assert_response :success
  end

  test "should get new" do
    get new_tuuit_url
    assert_response :success
  end

  test "should create tuuit" do
    assert_difference('Tuuit.count') do
      post tuuits_url, params: { tuuit: { id: @tuuit.id, time: @tuuit.time, title: @tuuit.title, tuuit: @tuuit.tuuit, user_id: @tuuit.user_id } }
    end

    assert_redirected_to tuuit_url(Tuuit.last)
  end

  test "should show tuuit" do
    get tuuit_url(@tuuit)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuuit_url(@tuuit)
    assert_response :success
  end

  test "should update tuuit" do
    patch tuuit_url(@tuuit), params: { tuuit: { id: @tuuit.id, time: @tuuit.time, title: @tuuit.title, tuuit: @tuuit.tuuit, user_id: @tuuit.user_id } }
    assert_redirected_to tuuit_url(@tuuit)
  end

  test "should destroy tuuit" do
    assert_difference('Tuuit.count', -1) do
      delete tuuit_url(@tuuit)
    end

    assert_redirected_to tuuits_url
  end
end
