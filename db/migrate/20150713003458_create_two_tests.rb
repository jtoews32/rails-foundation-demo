class CreateTwoTests < ActiveRecord::Migration
  def change
    create_table :two_tests do |t|
      t.string :submission_type
      t.string :live_test_flat
      t.string :cik
      t.string :ccc
      t.string :return_copy_flag
      t.string :override_internal_flag
      t.string :contact_name
      t.string :contact_phone_number
      t.string :contact_email_address
      t.timestamps
    end
  end
end
