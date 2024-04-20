require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_url
    assert_response :success
  end
end
