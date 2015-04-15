require "rails_helper"

feature "user dispenses meta points" do
  let(:user) { FactoryGirl.create(:user) }

  scenario "user adds meta points to system" do
    sign_in user
    visit root_path
    click_button "initialize immune system"
    save_and_open_page
    # add meta points
    # click submit
    expect(page).to have_content "meta points added"
  end
end
