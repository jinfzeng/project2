# == Schema Information
#
# Table name: users
#
#  uid        :integer         not null
#  first_name :text
#  last_name  :text
#  division   :integer
#  department :integer
#  usertype   :integer
#  password   :text
#  enc_pass   :text
#  salt       :text
#

# app/models/user.rb
class User < ActiveRecord::Base
end
