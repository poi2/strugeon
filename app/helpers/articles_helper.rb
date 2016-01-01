module ArticlesHelper
  def self_innovator_list article
    article.innovators.map(&:name).join("<br />").html_safe rescue ""
  end
end
