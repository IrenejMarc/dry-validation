require 'dry/validation/contract'

RSpec.describe Dry::Validation::Contract, '.params' do
  subject(:contract) do
    Class.new(Dry::Validation::Contract) do
      schema do
        required(:email).filled(:string)
      end
    end
  end

  it 'defines a schema' do
    expect(contract.__schema__).to be_a(Dry::Schema::Processor)
  end
end
