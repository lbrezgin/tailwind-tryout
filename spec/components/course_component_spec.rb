# frozen_string_literal: true

require "rails_helper"

RSpec.describe DiscountComponent, type: :component do
  it "renders the component correctly" do
    course = Course.create(title: 'Organizing your Time', price: 155.00, location: 'London')
    render_inline(DiscountComponent.new(item: course))

    expect(page).to have_css "p[class='text-green-400']", text: "10% discount"
    expect(page).to have_css "img[src*='/assets/star.jpg']"
  end
end
