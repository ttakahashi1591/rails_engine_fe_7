require 'rails_helper'

RSpec.describe 'Merchants Index' do
  describe "When I visit /merchants" do
    it "then I should see a list of merchants by name" do
      visit merchants_path

      expect(page).to have_content('Merchants')
      expect(page).to have_link(merchant_1.name, href: "/merchants/#{merchant_1.id}")
      expect(page).to have_link(merchant_2.name, href: "/merchants/#{merchant_2.id}")
      expect(page).to have_link(merchant_3.name, href: "/merchants/#{merchant_3.id}")      
    end
  end
end