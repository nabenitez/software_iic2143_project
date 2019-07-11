require 'test_helper'

class OfferTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_tutorial = offer_tutorials(:one)
  end

  test "should get index" do
    get offer_tutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_tutorial_url
    assert_response :success
  end

  test "should create offer_tutorial" do
    assert_difference('OfferTutorial.count') do
      post offer_tutorials_url, params: { offer_tutorial: { duration: @offer_tutorial.duration, price: @offer_tutorial.price, start: @offer_tutorial.start } }
    end

    assert_redirected_to offer_tutorial_url(OfferTutorial.last)
  end

  test "should show offer_tutorial" do
    get offer_tutorial_url(@offer_tutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_tutorial_url(@offer_tutorial)
    assert_response :success
  end

  test "should update offer_tutorial" do
    patch offer_tutorial_url(@offer_tutorial), params: { offer_tutorial: { duration: @offer_tutorial.duration, price: @offer_tutorial.price, start: @offer_tutorial.start } }
    assert_redirected_to offer_tutorial_url(@offer_tutorial)
  end

  test "should destroy offer_tutorial" do
    assert_difference('OfferTutorial.count', -1) do
      delete offer_tutorial_url(@offer_tutorial)
    end

    assert_redirected_to offer_tutorials_url
  end
end
