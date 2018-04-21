class CreateUsersCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :users_curriculums do |t|
      t.integer :user_id
      t.integer :curriculum_id
      t.timestamps
    end
  end
end
