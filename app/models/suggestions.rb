class Suggestions < ActiveRecord::Base
  belongs_to :episode

  validates :episode, :text, presence: true

end
