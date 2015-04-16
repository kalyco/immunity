require "rails_helper"

feature "user dispenses meta points" do
  let(:stage) { FactoryGirl.create(:stage) }

  scenario "user adds meta points to system" do
    sign_in stage.system.user
    visit system_path(stage.system)

    select 9, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "add points"

    expect(page).to have_content("updated")
    # expect(stage.cytokines).to eq 9
    # expect(stage.macromolecules).to eq 9
    # expect(stage.phagocytes).to eq 13
  end
end
