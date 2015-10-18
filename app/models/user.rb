class User < ActiveRecord::Base
  validates_presence_of :username
  validates_uniqueness_of :username
  attr_accessor :password

  def before_save
    self.salt = random_string(8)  if self.salt == nil
    puts self.salt
    self.hashed_password = Digest::SHA1.hexdigest(self.salt + self.password)  unless self.password.nil?
    if self.new_record?
      self.is_admin = true if self.role == 'Admin'
    end
  end

  def self.authenticate?(username, password)
    user = User.find_by_username username
    user.hashed_password == Digest::SHA1.hexdigest(user.salt + password)
  end

  def random_string(len)
    randstr = ""
    chars = ("0".."9").to_a + ("a".."z").to_a + ("A".."Z").to_a
    len.times { randstr << chars[rand(chars.size - 1)] }
    randstr
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
