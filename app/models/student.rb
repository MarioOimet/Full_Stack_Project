class Student < ApplicationRecord
  has_many :contracts

  def name
    last_name_student
  end
end
