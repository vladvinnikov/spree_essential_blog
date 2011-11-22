module Blog::PostsHelper

  def post_seo_path(post)
    full_post_path(post.year, post.month, post.day, post.to_param)
  end
  
  def post_rss(post)
    output = []
    post.images.each do |image|
      output << image_tag(image.attachment.url, :alt => image.alt)
    end
    output << post.rendered_body
    output.join("\n").html_safe
  end
  
  def date_full(date)
    return Russian.strftime(date, '%A %B %d, %Y').gsub(/\s0/, ' ') if I18n.locale == :ru
    date.strftime('%A %B %d, %Y').gsub(/\s0/, ' ')
  end

end