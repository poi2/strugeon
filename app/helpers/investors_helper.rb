module InvestorsHelper
  def self_tickets_list investor
    investor.tickets.map{|ticket|
      article = tikect.article
      [article.title, ticket.price].join(":")
    }.join(", ") rescue ""
  end
end
