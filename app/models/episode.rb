class Episode < ActiveRecord::Base
  
  has_many :suggestions
  has_attached_file :track
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :title,:description,:release_date,:type, presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validate :release_date_is_in_the_future

  protected

  def release_date_is_in_the_future
    if release_date.present?
      errors.add(:release_date, "should probably be in the future") if release_date < Date.today
    end
  end

end
