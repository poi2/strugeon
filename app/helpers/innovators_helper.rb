module InnovatorsHelper
  def self_article_list innovator
    innovator.articles.map{|a| [a.id, a.title].join(":")}.join("<br />").html_safe rescue ""
  end
end
