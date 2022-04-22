class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.string :descricao
      t.string :comportamento
      t.string :causa
      t.string :prioridade
      t.string :categoria
      t.string :evidencias

      t.timestamps
    end
  end
end
