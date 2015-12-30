class CreateJoinTableArticleInnovator < ActiveRecord::Migration
  def change
    create_join_table :articles, :innovators do |t|
      # t.index [:article_id, :innovator_id]
      # t.index [:innovator_id, :article_id]
    end
  end
end
