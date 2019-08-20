require "capybara/rspec"

feature "homepage" do

  scenario "I should be able to visit the homepage" do
    visit '/todolist'
    expect(page).to have_content 'Buy milk'
  end

  scenario "I should be able to add a todo item" do
    visit '/add-item-input'
    fill_in('item', :with => 'Buy stamps')
    click_button('submit')
    expect(page).to have_content 'Buy stamps'
  end
end
