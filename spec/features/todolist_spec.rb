require "capybara/rspec"

feature "homepage" do

  scenario "its default list should be to buy milk" do
    visit '/todolist'
    expect(page).to have_content 'Buy milk'
  end

  scenario "I should be able to add a todo item" do
    visit '/add-item-input'
    fill_in('name', :with => 'Buy stamps')
    click_button('submit')
    expect(page).to have_content 'Buy stamps'
  end

  scenario 'I should be able to add an optional deadline' do
    visit '/add-item-input'
    fill_in('name', :with => 'Buy stamps')
    fill_in('deadline', :with => 'Thursday')
    click_button('submit')
    expect(page).to have_content 'Buy stamps by Thursday'
  end

  scenario 'I should be able to tick items off my list' do
    visit '/todolist'
    fill_in('name', :with => 'Buy milk')
    click_button('Complete')
    expect(page).to have_css('p.complete', :text => 'Buy milk')
  end
end
