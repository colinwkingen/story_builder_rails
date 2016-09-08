require 'rails_helper'


describe 'visits add a new story page' do
  it 'visits the create new story page' do
    visit stories_path
    click_link 'Start new story'
    expect(page).to have_content 'Start a new Story.'
  end

  it 'creates a new story' do
    visit stories_path
    click_link 'Start new story'
    fill_in 'Title', :with => 'The Grapes Of Wrath'
    click_on 'Create Story'
    expect(page).to have_content 'This story has no content.'
  end

  it 'return to story list' do
    visit stories_path
    click_link 'Start new story'
    fill_in 'Title', :with => 'The Grapes Of Wrath'
    click_on 'Create Story'
    click_link 'Return to Story List'
    expect(page).to have_content 'The Stories Index'
  end

end
