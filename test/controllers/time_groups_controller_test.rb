require 'test_helper'

class TimeGroupsControllerTest < ActionController::TestCase
  setup do
    @time_group = time_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_group" do
    assert_difference('TimeGroup.count') do
      post :create, time_group: { day: @time_group.day, month: @time_group.month, student_name: @time_group.student_name, total_min: @time_group.total_min }
    end

    assert_redirected_to time_group_path(assigns(:time_group))
  end

  test "should show time_group" do
    get :show, id: @time_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_group
    assert_response :success
  end

  test "should update time_group" do
    patch :update, id: @time_group, time_group: { day: @time_group.day, month: @time_group.month, student_name: @time_group.student_name, total_min: @time_group.total_min }
    assert_redirected_to time_group_path(assigns(:time_group))
  end

  test "should destroy time_group" do
    assert_difference('TimeGroup.count', -1) do
      delete :destroy, id: @time_group
    end

    assert_redirected_to time_groups_path
  end
end
