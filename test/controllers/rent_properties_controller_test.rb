require 'test_helper'

class RentPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_property = rent_properties(:one)
  end

  test "should get index" do
    get rent_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_property_url
    assert_response :success
  end

  test "should create rent_property" do
    assert_difference('RentProperty.count') do
      post rent_properties_url, params: { rent_property: { Property_name: @rent_property.Property_name, address: @rent_property.address, age: @rent_property.age, note: @rent_property.note, rent: @rent_property.rent } }
    end

    assert_redirected_to rent_property_url(RentProperty.last)
  end

  test "should show rent_property" do
    get rent_property_url(@rent_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_property_url(@rent_property)
    assert_response :success
  end

  test "should update rent_property" do
    patch rent_property_url(@rent_property), params: { rent_property: { Property_name: @rent_property.Property_name, address: @rent_property.address, age: @rent_property.age, note: @rent_property.note, rent: @rent_property.rent } }
    assert_redirected_to rent_property_url(@rent_property)
  end

  test "should destroy rent_property" do
    assert_difference('RentProperty.count', -1) do
      delete rent_property_url(@rent_property)
    end

    assert_redirected_to rent_properties_url
  end
end
