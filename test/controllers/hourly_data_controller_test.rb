require 'test_helper'

class HourlyDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hourly_data_index_url
    assert_response :success
  end

  test "should get import" do
    get hourly_data_import_url
    assert_response :success
  end

end
