# == Schema Information
#
# Table name: blocks
#
#  id         :integer          not null, primary key
#  title      :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Block < ApplicationRecord
  belongs_to :project
  has_many :block_modules

  accepts_nested_attributes_for :block_modules, allow_destroy: true
end