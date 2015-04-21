require "rails_helper"

feature "user starts game" do

  let(:user) { FactoryGirl.create(:user) }

  scenario "user signs in and creates a new system" do
    sign_in user
    visit root_path
    click_button "new game"
    click_button "initialize immune system"
    expect(page).to have_content "keep it safe. good luck."
  end
end

