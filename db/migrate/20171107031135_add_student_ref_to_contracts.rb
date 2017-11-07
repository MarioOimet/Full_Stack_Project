class AddStudentRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :Student, foreign_key: true
  end
end
