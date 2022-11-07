require 'rails_helper'

describe "Show author page", type: :feature do
  it "should print the autors info on the page" do
    @author1 = FactoryBot.create :author
    visit author_path(@author1)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
  end
end