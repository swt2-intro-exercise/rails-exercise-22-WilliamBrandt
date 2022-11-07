require 'rails_helper'

describe "Show author index page", type: :feature do
  it "should print all authors info on the page + link" do
    @author1 = FactoryBot.create :author
    visit authors_path
    expect(page).to have_text("Alan Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end

end