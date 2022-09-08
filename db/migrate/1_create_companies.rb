class CreateCompanies < ActiveRecord::Migration[5.2]
   def change
   create_table :companies do |t|
    t.string :name
    t.string :image
    t.string :company_type
    t.string :location
    t.integer :contact
   end
  end
end
