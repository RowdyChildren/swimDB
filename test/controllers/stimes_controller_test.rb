require 'test_helper'

class StimesControllerTest < ActionController::TestCase
  setup do
    @stime = stimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stime" do
    assert_difference('Stime.count') do
      post :create, stime: { meet_id: @stime.meet_id, stroke_id: @stime.stroke_id, swimmer_id: @stime.swimmer_id, time: @stime.time }
    end

    assert_redirected_to stime_path(assigns(:stime))
  end

  test "should show stime" do
    get :show, id: @stime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stime
    assert_response :success
  end

  test "should update stime" do
    patch :update, id: @stime, stime: { meet_id: @stime.meet_id, stroke_id: @stime.stroke_id, swimmer_id: @stime.swimmer_id, time: @stime.time }
    assert_redirected_to stime_path(assigns(:stime))
  end

  test "should destroy stime" do
    assert_difference('Stime.count', -1) do
      delete :destroy, id: @stime
    end

    assert_redirected_to stimes_path
  end
end
