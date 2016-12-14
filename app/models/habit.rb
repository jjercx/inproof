# == Schema Information
#
# Table name: habits
#
#  id      :integer          not null, primary key
#  name    :string
#  count   :integer
#  goal    :integer
#  exp     :integer
#  bronze  :integer
#  silver  :integer
#  gold    :integer
#  user_id :integer
#

class Habit < ActiveRecord::Base

  belongs_to :user

end
