require "rails_helper"

feature "user dispenses meta points" do
  let(:stage) { FactoryGirl.create(:stage) }

  scenario "user adds meta points to system" do
    sign_in stage.system.user
    visit system_path(stage.system)

    select 8, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"

    expect(page).to have_content("no more meta points remaining")
    expect(page).to have_content("cytokines: 8")
    expect(page).to have_content("macromolecules: 9")
    expect(page).to have_content("phagocytes: 13")
  end

  scenario "user can't dispense more than 30 points" do
    sign_in stage.system.user
    visit system_path(stage.system)

    select 20, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"

    expect(page).to have_content("you have 30 meta points to spend.")
    expect(stage.cytokines).to eq(0)
    expect(stage.macromolecules).to eq(0)
    expect(stage.phagocytes).to eq(0)
  end
end
