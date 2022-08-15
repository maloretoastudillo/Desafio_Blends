require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "is not valid without a name" do
    strain = Strain.create(origin: "Valle del Itata")
    expect(strain).to_not be_valid
  end

  it "is not valid without a name" do
    strain = Strain.create(name: "" , origin: "Valle del Itata")
    expect(strain).to_not be_valid
  end

  it "is not valid without a name" do
    strain = Strain.create(name: "Carmenere" , origin: "Valle del Itata")
    expect(strain.name).to eq("Carmenere")
  end

  it "is not valid with de same name" do
    strain1 = Strain.create(name:"SummerWine", origin: "Maule")
    strain2 = Strain.create(name:"SummerWine", origin: "Colchagua")
    expect(strain2).to_not be_valid
  end
  
  it "is not valid with de same name" do
    strain3 = Strain.create(name:"Winter", origin: "Casablanca")
    strain4 = Strain.create(name:"Spring", origin: "Cauquenes")
    expect(strain4.name).to eq("Spring")
  end

end
