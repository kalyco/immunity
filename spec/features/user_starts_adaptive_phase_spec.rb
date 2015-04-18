require "rails_helper"

feature "user begins adaptive phase" do
  let(:stage) { FactoryGirl.create(:stage) }

  pending "user adds meta points to system" do
    sign_in stage.system.user
    visit system_path(stage.system)

    select 8, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"
    click_button "continue"

    expect(page).to have_content("entering adaptive phase")
  end
end
