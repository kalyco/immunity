require "rails_helper"

feature "virus automatically responds during turn" do
  pending "virus progresses according to turn stage" do
    user = FactoryGirl.create(:user)

    sign_in user
    click_link "new game"
    click_button "initialize immune system"

    select 8, from: "cytokines"
    select 9, from: "macromolecules"
    select 13, from: "phagocytes"
    click_button "submit points"
    click_link "continue"

  end
end
