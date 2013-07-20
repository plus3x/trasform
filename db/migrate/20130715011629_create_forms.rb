class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :type_of_legal_entity
      t.string :company
      t.string :creator_name
      t.string :registered_address
      t.string :actual_address
      t.string :address_on_english
      t.decimal :phone, scale: 0, precision: 8
      t.decimal :fax, scale: 0, precision: 8
      t.string :email
      t.decimal :inn, scale: 0, precision: 8
      t.decimal :kpp, scale: 0, precision: 8
      t.decimal :ogrn, scale: 0, precision: 8
      t.string :bank_name
      t.string :current_account, scale: 0, precision: 8
      t.string :correspondent_account, scale: 0, precision: 8
      t.decimal :bik, scale: 0, precision: 8
      t.string :bank_person
      t.string :type_of_certificate
      t.string :auditors_name
      t.string :categories_list_of_works

      t.timestamps
    end
  end
end
