class RemoveLatitudeAndLongitudeFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :latitude, :integer
    remove_column :jobs, :longitude, :integer
  end
end
