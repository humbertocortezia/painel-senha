class CreateSenhas < ActiveRecord::Migration[5.2]
  def change
    create_table :senhas do |t|
      t.string :comanda, limit: 70

      t.timestamps
    end
  end
end
