class Schedule < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :city, :state, :zipcode, :urgency
  validates :age, numericality: { greater_than_or_equal_to: 21 }
  validates_uniqueness_of :first_name, scope: :last_name, message: 'has already been added for given last name'
  validates_uniqueness_of :time, message: 'has already been taken'
  validates :zipcode, length: { is: 5 }, numericality: { only_integer: true }
  validates :urgency, inclusion: { in: %w(High Low None) }

  scope :sort_by_age, -> { order(age: :desc) }
  scope :sort_by_last_name, -> { order(:last_name)}
end
