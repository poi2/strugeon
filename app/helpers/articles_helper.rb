module ArticlesHelper
  def self_innovator_list article
    article.innovators.map{|i| [i.id, i.name].join(":")}.join("<br />").html_safe rescue ""
  end

  def index_description article
    truncate article.description, length: 30
  end
end
