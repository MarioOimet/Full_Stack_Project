class CreateEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
