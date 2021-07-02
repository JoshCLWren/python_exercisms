class Allergies
  ALLERGY_ITEMS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  def initialize(score)
    @score = score
  end

  def allergic_to?(product)
    list.include? product
  end

  def list
    allergy_keys = ALLERGY_ITEMS.keys.select { |num| num & @score == num }
    ALLERGY_ITEMS.values_at(*allergy_keys)
  end
end