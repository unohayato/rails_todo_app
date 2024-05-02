require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

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

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task, params: {task: {title: 'Updated Title', content: 'Updated content'}})
    assert_redirected_to task_path(@task)
    @task.reload
    assert_equal'Updated Title', @task.title
    assert_equal 'Updated content', @task.content 
  end

  test "should delete task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end
    assert_redirected_to tasks_path
  end
end


