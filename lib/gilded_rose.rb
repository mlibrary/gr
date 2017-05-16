

class GildedRose
  attr_accessor :name, :days_remaining, :quality

  def initialize(name, days_remaining, quality)
    @name           = name
    @days_remaining = days_remaining
    @quality        = quality
  end

  def tick # one day passes
    if self.we_increase_in_quality_over_time
      self.increase_quality

    else
      self.decrease_quality
    end

    @days_remaining -= 1
  end

  def we_increase_in_quality_over_time
    @name == "Aged Brie"
  end

  def increase_quality
    unless @quality == 50
      @quality += 1
    end
  end

  def decrease_quality
    unless @quality == 0
      @quality -= 1
    end
  end

end

