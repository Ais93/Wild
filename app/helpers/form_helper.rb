module FormHelper
  def setup_user(user)
    3.times { user.interests.build }
    user
  end
end