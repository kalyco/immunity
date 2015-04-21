require "rails_helper"

feature "user dispenses meta points" do

  scenario "user adds meta points to system" do
    user = FactoryGirl.create(:user)

    sign_in user
    click_button "new game"
    click_button "initialize immune system"

    select 8, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"

    expect(page).to have_content("meta points dispensed")
    expect(page).to have_content("cytokines: 8")
    expect(page).to have_content("macromolecules: 9")
    expect(page).to have_content("phagocytes: 13")
  end
end
