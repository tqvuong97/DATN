require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer birthday", with: @customer.customer_birthday
    fill_in "Customer name", with: @customer.customer_name
    fill_in "Customer phone", with: @customer.customer_phone
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer birthday", with: @customer.customer_birthday
    fill_in "Customer name", with: @customer.customer_name
    fill_in "Customer phone", with: @customer.customer_phone
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
