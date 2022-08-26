require 'rails_helper'

RSpec.describe Admin, type: :model do
  # criar uma instancia admin e testar
  it "admin is valid" do
    admin = Admin.new(email: "admin@admin.com", password: "123456")

    expect(admin.email).to eql "admin@admin.com"
    # para avaliar se o admin é valido
    expect(admin).to be_valid
  end
  # validar se o admin nao é valido
  it "admin is not valid" do
    admin = Admin.new(email: "admin@admin.com")
    
    expect(admin).to_not be_valid
  end
end
