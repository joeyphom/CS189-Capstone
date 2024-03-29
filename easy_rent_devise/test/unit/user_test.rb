require 'test_helper'

class UserTest < ActiveSupport::TestCase
    
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email)
  
  should validate_presence_of(:password)
  should ensure_length_of(:password).is_at_least(8)

end
