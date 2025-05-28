require "test_helper"

class WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get works_url
    assert_response :success
  end

  test "should get show" do
    get work_url(Work.first) # Assuming you have a work with ID 1
    assert_response :success
  end
end
