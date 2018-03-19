class EntryComment < ApplicationRecord
  belongs_to :entry
end

# == Schema Information
#
# Table name: entry_comments
#
#  id         :integer          not null, primary key
#  author     :string
#  body       :text
#  entry_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_entry_comments_on_entry_id  (entry_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_id => entries.id)
#
