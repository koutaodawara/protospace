require 'rails_helper'

feature 'User login' do
  given(:login_user) { create(:user) }
  given(:product) { build(:product, :sub) }

  def sign_up
    visit root_path
    click_link 'Get Started'
      click_on 'sign_up'
      fill_in 'nickname', with: 'kouta'
      fill_in 'email', with: 'kouta@example.com'
      fill_in 'password', with: '12345678'
      fill_in 'Member', with: 'tech camp'
      fill_in 'profile', with: '宜しくお願いします'
      fill_in 'Works', with: 'もーちょいやー'
      click_button 'save'
       expect(page).to have_content'Welcome! You have signed up successfully.'
  end

  def sign_in
    visit root_path
    click_link 'Get Started'
      fill_in 'Email address', with: login_user.email
      fill_in 'Password', with: login_user.password
      click_button "Sign in"
      expect(current_path).to eq root_path
  end

    scenario "User management" do
      sign_up
      end

    scenario "a user login and post a product" do
      sign_in
      click_on "New Proto"
      fill_in "Title", with: "future test"
      fill_in "Catch Copy", with: "future test"
      fill_in "Concept", with: "future test"
      attach_file "product[pictures_attributes][0][image]", "spec/fixtures/sample.jpg"
      1.upto(3) do |i|
        attach_file "product[pictures_attributes][#{i}][image]", 'spec/fixtures/sample.jpg'
      end
      click_button 'Publish'
      expect(current_path).to eq root_path
    end
end
