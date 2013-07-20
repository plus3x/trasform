class Form < ActiveRecord::Base
  before_validation do
    self.phone.gsub(/[^\d]/, "")
    self.fax.gsub(/[^\d]/, "")
  end
  
  attr_accessible :type_of_legal_entity, :actual_address, :address_on_english, :auditors_name, :bank_name, :bank_person, :bik, :categories_list_of_works, :company, :correspondent_account, :creator_name, :current_account, :email, :fax, :inn, :kpp, :ogrn, :phone, :registered_address, :type_of_certificate
  
  validates :type_of_legal_entity, :bank_name, :bank_person, :categories_list_of_works, :company, :creator_name, :type_of_certificate, presence: true
  validates :bik, presence: true, format: { with: %r{\d{9}}i, message: 'must be contain nine numbers.' }
  validates :correspondent_account, presence: true, format: { with: %r{\d{20}}i, message: 'must be contain twenty numbers.' }
  validates :current_account, presence: true, format: { with: %r{\d{20}}i, message: 'must be contain twenty numbers.' }
  validates :email, presence: true, format: { with: %r{\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z}i }
  validates :fax, presence: true, format: { with: %r{\d{7,11}}i }
  validates :inn, presence: true, format: { with: %r{\d{10}}i, message: 'must be contain ten numbers.' }
  validates :kpp, presence: true, format: { with: %r{\d{9}}i, message: 'must be contain nine numbers.' }
  validates :ogrn, presence: true, format: { with: %r{\d{13}}i, message: 'must be contain thirteen numbers.' }
  validates :phone, presence: true, format: { with: %r{\d{7,11}}i }
  validates :auditors_name, presence: true
  validates :actual_address, :address_on_english, :registered_address, presence: true, format: { with: %r{\A\d{6}\,}i, message: 'must start with the postal code("123456, City, street").' }
end
