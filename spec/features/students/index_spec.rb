require 'rails_helper'
 RSpec.describe 'students index page' do
   before :each do
     
     visit "/students"
   end
   it 'can visit the students page and see JSON output' do
    # save_and_open_page
      expect(page).to have_content('Hello my name is Gunnar')
   end
 end