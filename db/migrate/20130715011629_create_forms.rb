class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :type_of_legal_entity
      t.string :company
      t.string :creator_name
      t.string :registered_address
      t.string :actual_address
      t.string :address_on_english
      t.string :phone
      t.string :fax
      t.string :email
      t.string :inn
      t.string :kpp
      t.string :ogrn
      t.string :bank_name
      t.string :current_account
      t.string :correspondent_account
      t.string :bik
      t.string :bank_person
      t.string :type_of_certificate
      t.string :auditors_name
      t.string :categories_list_of_works

      t.timestamps
    end
  end
end
