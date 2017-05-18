class AddPixelEventNameToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :pixel_event_name, :string
  end
end
