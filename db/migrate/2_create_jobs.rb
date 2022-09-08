class CreateJobs < ActiveRecord::Migration[5.2]
  def change
   create_table :jobs do |t|
    t.string :job_name
    t.string :image
    t.string :description
    t.integer :price
    t.integer :company_id
   end
  end
end