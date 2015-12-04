require 'test_helper'

class TwoTestsControllerTest < ActionController::TestCase
  setup do
    @two_test = two_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:two_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create two_test" do
    assert_difference('TwoTest.count') do
      post :create, two_test: { ccc: @two_test.ccc, cik: @two_test.cik, contact_email_address: @two_test.contact_email_address, contact_name: @two_test.contact_name, contact_phone_number: @two_test.contact_phone_number, live_test_flat: @two_test.live_test_flat, override_internal_flag: @two_test.override_internal_flag, return_copy_flag: @two_test.return_copy_flag, submission_type: @two_test.submission_type }
    end

    assert_redirected_to two_test_path(assigns(:two_test))
  end

  test "should show two_test" do
    get :show, id: @two_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @two_test
    assert_response :success
  end

  test "should update two_test" do
    put :update, id: @two_test, two_test: { ccc: @two_test.ccc, cik: @two_test.cik, contact_email_address: @two_test.contact_email_address, contact_name: @two_test.contact_name, contact_phone_number: @two_test.contact_phone_number, live_test_flat: @two_test.live_test_flat, override_internal_flag: @two_test.override_internal_flag, return_copy_flag: @two_test.return_copy_flag, submission_type: @two_test.submission_type }
    assert_redirected_to two_test_path(assigns(:two_test))
  end

  test "should destroy two_test" do
    assert_difference('TwoTest.count', -1) do
      delete :destroy, id: @two_test
    end

    assert_redirected_to two_tests_path
  end
end
