module InnovatorsHelper
  def self_article_list innovator
    innovator.articles.map{|a| [a.id, a.title].join(":")}.join("<br />").html_safe rescue ""
  end

  def index_description innovator
    truncate innovator.description, length: 30
  end
end
