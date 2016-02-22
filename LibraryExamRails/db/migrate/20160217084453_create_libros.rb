class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :title
      t.string :author
      t.string :genre

      t.timestamps
    end
  end
end
