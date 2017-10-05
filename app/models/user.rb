class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email_address, :age
  validates_length_of  :first_name, :last_name, minimum: 2
  validates_numericality_of :age, greater_than: 9, less_than: 150
end
