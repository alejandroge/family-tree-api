require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'has the expected associations' do
    is_expected.to belong_to(:father).class_name('Person').optional
    is_expected.to belong_to(:mother).class_name('Person').optional
  end

  describe '#children' do
    let(:person) { Person.create(name: 'Joe', last_name: 'Doe') }
    subject { person.children }

    context 'person has no children' do
      it { is_expected.to be_empty }
    end

    context 'persom is father to a child' do
      let!(:child) { Person.create(name: 'Amy', last_name: 'Pond', father: person) }
      it { is_expected.to eq([child]) }
    end

    context 'persom is mother to a child' do
      let!(:child) { Person.create(name: 'Amy', last_name: 'Pond', mother: person) }
      it { is_expected.to eq([child]) }
    end
  end
end
