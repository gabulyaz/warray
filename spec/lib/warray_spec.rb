require 'spec_helper'
require 'warray'

describe Warray do

    it {is_expected.to respond_to(:size, :length, :wsum)}

    it {is_expected.to be_kind_of(Warray)}

    it "New Warray is empty." do
      expect(Warray.new.size).to be == 0
    end

    it "Warrays size is halften of the loaded arrays size" do
      a = %w(a 1 b 2 c 3 d 4 d 5 e 6 f 7 g 8 h 9 i 10)
      s = a.size
      w = Warray.new(a)
      expect(w.size).to be == s/2
    end

    it "print out with to_s method" do
      c=%w(apple 60% orange 30% peach 10%);w = Warray.new(c)
      expect(w.build.to_s).to be == '["apple", "apple", "apple", "apple", "apple", "apple", "orange", "orange", "orange", "peach"]'
    end

    it "summarize the weights" do
      b=%w(girl 3 boy 5)
      w = Warray.new(b)
      expect(w.wsum).to be == 8
    end

end
