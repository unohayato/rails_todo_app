require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count', 1) do
      post tasks_url, params: { task: { title: 'Test Task', content: 'Test content'} }
    end

    assert_redirected_to tasks_path
    follow_redirect!
    assert_response :success
    assert_equal 'Task was successfully created.', flash[:notice]
  end
end
