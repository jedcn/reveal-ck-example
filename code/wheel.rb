class Wheel

  attr_reader :rim, :tire

  def initialize(args={})
    @rim  = args[:rim]
    @tire = args[:tire]
  end

  def diameter
    rim + (tire * 2)
  end

end
