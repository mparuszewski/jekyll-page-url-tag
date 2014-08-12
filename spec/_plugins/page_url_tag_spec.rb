require 'spec_helper'

describe Jekyll::PageUrlTag do
  
  it 'should inherit Liquid::Tag' do
    expect(described_class.ancestors).to include(Liquid::Tag)
  end

  describe '#render' do

    let(:pages) do
      [
        OpenStruct.new(url: '/test',  basename: 'Test'),
        OpenStruct.new(url: '/test1', basename: 'Test1'),
        OpenStruct.new(url: '/test2', basename: 'Test2'),
        OpenStruct.new(url: '/test3', basename: 'Test3')
      ]
    end

    let(:context) do
      OpenStruct.new(registers: { site: OpenStruct.new(pages: pages) })
    end

    it 'should return url for page if page exist' do
      expect(described_class.new(nil, 'test1', nil).render(context)).to eq('/test1')
    end

    it 'should return / if page with selected basename does not exist' do
      expect(described_class.new(nil, 'test-not-exist', nil).render(context)).to eq('/')
    end

  end
end
