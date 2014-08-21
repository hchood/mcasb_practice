module SignInAsHelper
  def sign_in_as(user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign in'
  end
end
