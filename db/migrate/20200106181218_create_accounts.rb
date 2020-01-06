class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :tipo
      t.boolean :conta_status
      t.string :saldoini
      t.string :moeda
      t.boolean :conta_favorita
      t.string :informacoes
      t.text :nota

      t.timestamps
    end
  end
end
