require 'spec_helper'

feature 'user invites friend' do
  scenario 'User successfully invites friend and invitation is accepted', { js: true, vcr: true } do
    alice = Fabricate(:user)
    sign_in(alice)

    invite_a_friend
    friend_accepts_invitation

    friend_signs_in

    friend_should_follow(alice)

    inviter_should_follow_friend(alice)

    clear_email
  end

  def invite_a_friend
    visit new_invitation_path
    fill_in "Friend's Name", with: "John Doe"
    fill_in "Friend's Email Address", with: "john@example.com"
    fill_in "Message", with: "Hello please join this site."
    click_button "Send Invitation"
    sign_out
  end

  def friend_accepts_invitation
    open_email "john@example.com"
    current_email.click_link "Accept this invitation"

    fill_in "Password", with: "password"
    fill_in "Full Name", with: "John Doe"
    within_frame("__privateStripeFrame3") do
      find_field('cardnumber').send_keys("4242424242424242")
    end
    within_frame("__privateStripeFrame4") do
      find_field('exp-date').send_keys("1121")
    end
    within_frame("__privateStripeFrame5") do
      find_field('cvc').send_keys("123")
    end
    click_button "Sign Up"
    expect(page).to have_content("Sign in")
  end

  def friend_signs_in
    fill_in "Email Address", with: "john@example.com"
    fill_in "Password", with: "password"
    click_button "Sign in"
  end

  def friend_should_follow(user)
    click_link "People"
    expect(page).to have_content user.full_name
    sign_out
  end

  def inviter_should_follow_friend(inviter)
    sign_in(inviter)
    click_link "People"
    expect(page).to have_content "John Doe"
  end

  def fill_stripe_elements()

  end
end
