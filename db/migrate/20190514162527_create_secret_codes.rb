class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
      t.string :code

      t.timestamps
    end

    add_index :secret_codes, :code, unique: true
  end
end
