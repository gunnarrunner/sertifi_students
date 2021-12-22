require 'rails_helper'
 RSpec.describe 'students index page' do
   before :each do
     
     visit "/students"
   end
   it 'can visit the students page and see JSON output', :vcr do
    
      expect(current_path).to eq('/students')
      expect(page).to have_content('Gunnar Runkle')
      expect(page).to have_button('Submit JSON')
   end
 end