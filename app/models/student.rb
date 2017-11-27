class Student < ApplicationRecord
  has_many :contracts

  belongs_to :category, :class_name => 'Category', :foreign_key => "Category_id"

  validates :first_name_student, :last_name_student, :city_student, :province_student, :phone_number_student, :e_mail_student, :pass_phrase, presence:true

  validates :pass_phrase, :length => { :in => 4..10 }
  validates :pass_phrase, :uniqueness => true

  def name
    last_name_student
  end
end
