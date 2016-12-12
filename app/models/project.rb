# == Schema Information
#
# Table name: projects
#
#  id       :integer          not null, primary key
#  name     :string
#  user_id  :integer
#  category :string
#  time     :integer
#

class Project < ActiveRecord::Base

  belongs_to :user

end
