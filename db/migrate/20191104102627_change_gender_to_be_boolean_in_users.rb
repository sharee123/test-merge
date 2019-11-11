class ChangeGenderToBeBooleanInUsers < ActiveRecord::Migration
  def change
    change_column :users, :gender, 'boolean USING CAST(gender AS boolean)'
  end
end