require 'warray/version'

# Warray
class Warray

  attr_reader :size, :wsum, :gcd

  # init
  def initialize(a = [])
    # Warray object has a stucture like this: [[value,weight],[value,weight]...]
    # @warray = Array.new { Array.new(2) }
    @warray = []
    # summerized weight for Warray object
    @wsum = 0
    # find the greatest common divisor, if there is not @gcd = 1
    @gcd = 1
    # use a temporary array to find the min weight
    j = []
    # flatten input array for avoid error
    a.flatten!
    # build Warray structure, odd items are values, even items are weights
    # make also sure that not give error if input array size is not even
    while a.size > 1
      value = a.shift
      weight =  a.shift.to_i.abs
      # summerize weights
      @wsum += weight
      # make sure that is it not null in array
      j << weight if weight != 0
      @warray << [value, weight]
    end
    # find the min weight and make gcd, if j is not empty
    @gcd = @wsum.gcd(j.min.to_i) unless j.empty?
    # return with [] if you call new method without array
    # otherwise return with Warray
    @warray
  end

  # return with size of Warray object
  def size
    @warray.size
  end

  # you can also use length method to get size of Warray object
  alias_method :length, :size

  # build an array with weighted items
  def build
    a = []
    @warray.map do |i|
      a << Array.new((i[1] / @gcd), i[0])
    end
    # make sure that it is flatten
    a.flatten!
  end

end
