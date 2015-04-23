require "rails_helper"

feature "user must dispense exactly 30" do
  scenario "user can't dispense more than 30 points" do
    user = FactoryGirl.create(:user)

    sign_in user
    click_link "new game"
    click_button "initialize immune system"

    select 20, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"

    expect(page).to have_content("you have 30 meta points to spend.")
    expect(user.system.stage.cytokines).to eq(0)
    expect(user.system.stage.macromolecules).to eq(0)
    expect(user.system.stage.phagocytes).to eq(0)
  end
end
