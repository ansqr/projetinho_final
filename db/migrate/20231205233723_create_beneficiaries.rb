class CreateBeneficiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficiaries do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
