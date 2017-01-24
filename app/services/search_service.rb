class SearchService
  def self.search(search_term)
    if search_term
      (search_posts(search_term) + search_posts_by_category(search_term)).uniq
    else
      Post.all.order("created_at DESC")
    end
  end

  def self.search_posts(search_term)
    Post.where("name LIKE ? OR address LIKE ?", "%#{search_term}%", "%#{search_term}%" )
  end

  def self.search_posts_by_category(search_term)
    Category.where("name LIKE ?", "%#{search_term}%").map { |category| category.posts }.flatten! || []
  end
end