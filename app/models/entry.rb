class Entry < ApplicationRecord
  has_many :entry_comments

  default_scope { order(created_at: :desc) }
end

# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  title      :string
#  summary    :text
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
