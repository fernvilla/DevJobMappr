class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.string :experience_level
      t.string :job_type
      t.string :primary_languages
      t.string :secondary_languages
      t.string :job_link
      t.string :company_name
      t.string :company_address
      t.string :company_website
      t.string :industry
      t.integer :company_size
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
