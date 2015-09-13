require 'rails_helper'

RSpec.describe "phone_numbers/index", type: :view do
  before(:each) do
    assign(:phone_numbers, [
      PhoneNumber.create!(
        :number => "Number",
        :person => Person.create!(first_name: "Tara", last_name: "Tiny")
        ),
      PhoneNumber.create!(
        :number => "Number",
        :person => Person.create!(first_name: "Sara", last_name: "Small")
      )
    ])
  end

  it "renders a list of phone_numbers" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
  end
end
