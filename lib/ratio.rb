require 'rational'
require 'forwardable'

class Ratio < Numeric
  VERSION = '1.0.0'
  
  extend Forwardable
  
  def initialize(numerator, denominator)
    raise ZeroDivisionError, 'divided by 0' if 0 == denominator
    @numerator, @denominator = numerator, denominator
  end

  module InstanceMethods
    def numerator
      @numerator
    end
    
    def denominator
      @denominator
    end
    
    def to_r
      Rational(numerator, denominator)
    end
  
    def to_s
      "#{numerator}:#{denominator}"
    end
  
    def inspect
      to_s
    end
  end
  
  include InstanceMethods
  def_instance_delegators :to_r, *(Ratio.instance_methods - InstanceMethods.instance_methods - Object.instance_methods + [:==])
end

module Kernel
  private
  
  def Ratio(numerator, denominator)
    Ratio.new(numerator, denominator)
  end
end


module Enumerable
  
  def each_with_progress(&block)
    enum_size = count
    if block_given?
      each_with_index { |obj, idx| yield(obj, Ratio(idx + 1, enum_size)) }
    else
      enum_for :each_with_progress
    end
  end
  
end