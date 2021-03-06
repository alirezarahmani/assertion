# encoding: utf-8

module Assertion

  # Builds inversions for instances of some `Assertion::Base` subclass
  #
  # @example
  #   IsAdult = Assertion.about :name, :age do
  #     age >= 18
  #   end
  #
  #   joe = OpenStruct.new(name: "Joe", age: 40)
  #
  #   child = Inverter.new(IsAdult)
  #   child[name: "Joe"].validate!
  #   # => #<Assertion::InvalidError @messages=["Joe is an adult (age 40)"]>
  #
  class Inverter

    include DSL::Caller

    # @!attribute [r] source
    #
    # @return [Class] The `Assertion::Base` sublcass to build negators for
    #
    attr_reader :source

    # @!scope class
    # @!method new(source)
    # Creates an immutable inversion object for the `Assertion::Base` subclass
    #
    # @param [Class] source
    #
    # @return [Assertion::Inverter]

    # @private
    def initialize(source)
      @source = source
      IceNine.deep_freeze(self)
    end

    # Initializes a [#source] object and builds a negator for it
    #
    # @param [Hash] hash The hash of attributes to apply the assertion to
    #
    # @return [Assertion::Inverter::Inversion]
    #
    def new(hash = {})
      Inversion.new source.new(hash)
    end

  end # class Inverter

end # module Assertion
