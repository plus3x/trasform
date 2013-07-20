require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { type_of_legal_entity: @form. type_of_legal_entity, actual_adress: @form.actual_adress, adress_on_english: @form.adress_on_english, auditors_name: @form.auditors_name, bank_name: @form.bank_name, bank_person: @form.bank_person, bik: @form.bik, categories_list_of_works: @form.categories_list_of_works, company: @form.company, correspondent_account: @form.correspondent_account, creator_name: @form.creator_name, current_account: @form.current_account, email: @form.email, fax: @form.fax, inn: @form.inn, kpp: @form.kpp, ogrn: @form.ogrn, phone: @form.phone, registered_adress: @form.registered_adress, type_of_certificate: @form.type_of_certificate }
    end

    assert_redirected_to form_path(assigns(:form))
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form
    assert_response :success
  end

  test "should update form" do
    put :update, id: @form, form: { type_of_legal_entity: @form. type_of_legal_entity, actual_adress: @form.actual_adress, adress_on_english: @form.adress_on_english, auditors_name: @form.auditors_name, bank_name: @form.bank_name, bank_person: @form.bank_person, bik: @form.bik, categories_list_of_works: @form.categories_list_of_works, company: @form.company, correspondent_account: @form.correspondent_account, creator_name: @form.creator_name, current_account: @form.current_account, email: @form.email, fax: @form.fax, inn: @form.inn, kpp: @form.kpp, ogrn: @form.ogrn, phone: @form.phone, registered_adress: @form.registered_adress, type_of_certificate: @form.type_of_certificate }
    assert_redirected_to form_path(assigns(:form))
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_redirected_to forms_path
  end
end
