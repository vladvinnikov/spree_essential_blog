Product.class_eval do
  has_many :post_products, :dependent => :destroy
  has_many :posts, :through => :post_products
  
  def taxonomy_posts
    all_taxons = taxons.map(&:self_and_ancestors).flatten
    all_posts = all_taxons.map(&:posts).flatten
    all_posts.uniq
  end
  
  def all_posts_count
    posts.count + taxonomy_posts.count
  end
  
  def have_any_posts?
    all_posts_count > 0
  end
end