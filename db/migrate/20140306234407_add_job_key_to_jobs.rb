class AddJobKeyToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_key, :string
    add_index :jobs, :job_key
  end
end
