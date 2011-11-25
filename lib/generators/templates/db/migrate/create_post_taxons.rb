class CreatePostTaxons < ActiveRecord::Migration
  def self.up
    create_table :post_taxons do |t|
      t.references :post
      t.references :taxon
      t.integer    :position
    end
  end

  def self.down
    drop_table :post_taxons
  end
end