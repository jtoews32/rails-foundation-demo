class CreateWorks < ActiveRecord::Migration
  def change
    
    create_table :works do |t|
      t.string :job_name
      t.integer :form_list
      t.integer :user_id
      t.timestamps
    end
  end
end
