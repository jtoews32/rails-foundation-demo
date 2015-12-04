require 'test_helper'

class OneTestsControllerTest < ActionController::TestCase
  setup do
    @one_test = one_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:one_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create one_test" do
    assert_difference('OneTest.count') do
      post :create, one_test: { ccc: @one_test.ccc, cik: @one_test.cik, contact_email_address: @one_test.contact_email_address, contact_name: @one_test.contact_name, contact_phone_number: @one_test.contact_phone_number, live_test_flat: @one_test.live_test_flat, override_internal_flag: @one_test.override_internal_flag, return_copy_flag: @one_test.return_copy_flag, submission_type: @one_test.submission_type }
    end

    assert_redirected_to one_test_path(assigns(:one_test))
  end

  test "should show one_test" do
    get :show, id: @one_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @one_test
    assert_response :success
  end

  test "should update one_test" do
    put :update, id: @one_test, one_test: { ccc: @one_test.ccc, cik: @one_test.cik, contact_email_address: @one_test.contact_email_address, contact_name: @one_test.contact_name, contact_phone_number: @one_test.contact_phone_number, live_test_flat: @one_test.live_test_flat, override_internal_flag: @one_test.override_internal_flag, return_copy_flag: @one_test.return_copy_flag, submission_type: @one_test.submission_type }
    assert_redirected_to one_test_path(assigns(:one_test))
  end

  test "should destroy one_test" do
    assert_difference('OneTest.count', -1) do
      delete :destroy, id: @one_test
    end

    assert_redirected_to one_tests_path
  end
end
