class Store < ActiveRecord::Base
  validates_presence_of :name, :supplier, message: "Cannot enter blank space."
  validates_format_of :name, :supplier, :with => /\A[A-Z  ']*\z/i, message: "Cannot enter numbers or characters other than an apostraphe."
  
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    errors.add(:delivery_date, "can't be in the past") if
      !delivery_date.blank? && delivery_date < Date.today
  end
end
