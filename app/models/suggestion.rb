# == Schema Information
#
# Table name: suggestions
#
#  sid        :integer         not null
#  suggestion :text
#  created_at :datetime
#  updated_at :datetime
#

# app/models/suggestion.rb
class Suggestion < ActiveRecord::Base
end
