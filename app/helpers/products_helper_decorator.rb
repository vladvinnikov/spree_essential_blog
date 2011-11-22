ProductsHelper.module_eval do
  def post_seo_url(post)
    full_post_url(post.year, post.month, post.day, post.to_param)
  end
end