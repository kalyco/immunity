require "rails_helper"

feature "user begins adaptive phase" do
  scenario "user moves from innate to adaptive" do
    user = FactoryGirl.create(:user)

    sign_in user
    click_button "new game"
    click_button "initialize immune system"

    select 8, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"
    click_button "continue"

    expect(page).to have_content("system is currently uncompromised")
  end
end
