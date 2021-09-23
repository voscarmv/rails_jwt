require "test_helper"

class TesttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testtype = testtypes(:one)
  end

  test "should get index" do
    get testtypes_url, as: :json
    assert_response :success
  end

  test "should create testtype" do
    assert_difference('Testtype.count') do
      post testtypes_url, params: { testtype: { binary: @testtype.binary, boolean: @testtype.boolean, date: @testtype.date, datetime: @testtype.datetime, decimal: @testtype.decimal, float: @testtype.float, integer: @testtype.integer, string: @testtype.string, text: @testtype.text, time: @testtype.time, timestamp: @testtype.timestamp } }, as: :json
    end

    assert_response 201
  end

  test "should show testtype" do
    get testtype_url(@testtype), as: :json
    assert_response :success
  end

  test "should update testtype" do
    patch testtype_url(@testtype), params: { testtype: { binary: @testtype.binary, boolean: @testtype.boolean, date: @testtype.date, datetime: @testtype.datetime, decimal: @testtype.decimal, float: @testtype.float, integer: @testtype.integer, string: @testtype.string, text: @testtype.text, time: @testtype.time, timestamp: @testtype.timestamp } }, as: :json
    assert_response 200
  end

  test "should destroy testtype" do
    assert_difference('Testtype.count', -1) do
      delete testtype_url(@testtype), as: :json
    end

    assert_response 204
  end
end
