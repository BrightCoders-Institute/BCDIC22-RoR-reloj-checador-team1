require "test_helper"

class LoginsAdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logins_admins_index_url
    assert_response :success
  end
end
