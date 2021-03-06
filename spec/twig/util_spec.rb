require 'spec_helper'

describe Twig::Util do
  describe '.numeric?' do
    it 'returns true if an object is numeric' do
      expect(Twig::Util.numeric?(1)).to eql(true)
      expect(Twig::Util.numeric?('1')).to eql(true)
    end

    it 'returns false if an object is not numeric' do
      expect(Twig::Util.numeric?('x')).to eql(false)
      expect(Twig::Util.numeric?([])).to eql(false)
      expect(Twig::Util.numeric?({})).to eql(false)
    end
  end

  describe '.truthy?' do
    it 'returns true if an object is truthy' do
      expect(Twig::Util.truthy?('true')).to eql(true)
      expect(Twig::Util.truthy?('TRUE')).to eql(true)
      expect(Twig::Util.truthy?(true)).to eql(true)
      expect(Twig::Util.truthy?('yes')).to eql(true)
      expect(Twig::Util.truthy?('YES')).to eql(true)
      expect(Twig::Util.truthy?('y')).to eql(true)
      expect(Twig::Util.truthy?('Y')).to eql(true)
      expect(Twig::Util.truthy?('on')).to eql(true)
      expect(Twig::Util.truthy?('ON')).to eql(true)
      expect(Twig::Util.truthy?('1')).to eql(true)
      expect(Twig::Util.truthy?(1)).to eql(true)
    end

    it 'returns false if an object is falsy' do
      expect(Twig::Util.truthy?('false')).to eql(false)
      expect(Twig::Util.truthy?(false)).to eql(false)
      expect(Twig::Util.truthy?('yep')).to eql(false)
      expect(Twig::Util.truthy?('sure, why not')).to eql(false)
    end
  end

end
