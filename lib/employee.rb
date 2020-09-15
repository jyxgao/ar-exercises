class Employee < ActiveRecord::Base
  # declare association
  belongs_to :store

  #declare validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true

  #register cb methods using symbols (method names)

  #method
  def generate_string(length)
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(length) { charset.sample }.join
  end

  #private methods (cb)
  private
    before_create do
      #(if using after_create, update each record)
      # Employee.all.each do |el|
      #   el.update(password: generate_string(8))
      # end
      self.password = generate_string(8)
    end
  
  
end
