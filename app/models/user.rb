class User < ActiveRecord::Base
    acts_as_authentic
    validates_presence_of :username
    validates_presence_of :email
    validates_length_of :username, :within => 8..20
    validates_format_of :email, :with => /^([^@\s]+)@((?:[a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email entered!."
    attr_protected :password_salt,:crypted_password
    def random_string(length)
      a = ("A".."Z").to_a + ("a".."z").to_a + ("0".."9").to_a
      newpass = ""
      1.upto(length) do |i|
        newpass << a[rand(a.size() -1) ]
      end
      return newpass
    end
    def password=(pass)
      @password = pass
      self.password_salt = self.random_string(10)
      self.crypted_password = self.encrypt(@password,self.password_salt)
    end
    def encrypt(salt,password)
      Digest::SHA1::hexdigest(salt+password)
    end
end
