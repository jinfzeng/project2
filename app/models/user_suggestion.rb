# == Schema Information
#
# Table name: user_suggestion_view
#
#  uid        :integer
#  first_name :text
#  last_name  :text
#  sid        :integer
#  suggestion :text
#  created_at :datetime
#  updated_at :datetime
#

# app/models/user_suggestion.rb
class UserSuggestion < ActiveRecord::Base
  set_table_name "user_suggestion_view"
end
