class AddThemesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :themes, :string
  end
end
