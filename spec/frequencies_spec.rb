require_relative '../frequencies'

describe '#histogram' do
  it 'should return empty when given an empty string' do
    actual = histogram('')
    expect(actual).to eq({})
  end

  it 'should return 1 when given just one word' do
    actual = histogram('beer')
    expect(actual).to eq({'beer' => 1})
  end

  it 'should return a histogram when given a sentence' do
    actual = histogram('The lazy dog jumped over the brown fox')
    expect(actual['the']).to eq(2)
    expect(actual['dog']).to eq(1)
    expect(actual['beer']).to eq(0)
  end
end
