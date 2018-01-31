class AddMissingTaggableIndex < ActiveRecord::Migration
  def self.up
    add_index ActsAsTaggableOn.taggings_table, [:taggable_id, :taggable_type, :context], name: 'taggings_taggable_context_idx'
  end

  def self.down
    remove_index ActsAsTaggableOn.taggings_table, name: 'taggings_taggable_context_idx'
  end
end
