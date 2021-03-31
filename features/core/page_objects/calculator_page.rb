require 'test/unit/assertions'

class CalculatorPage
  include Test::Unit::Assertions

  def initialize
    get_screen_mappings 'calculator', 'core'
  end

  def get_result
    text = $driver.find_element(@mappings['textview_Resultado']).text
    return text
  end

  def fill_first_number number
    $driver.find_element(@mappings['edittext_Primeiro_Numero']).send_key number
  end

  def fill_second_number number
    $driver.find_element(@mappings['edittext_Segundo_Numero']).send_key number
  end

  def click_button_sum
    $driver.find_element(@mappings['button_Sum']).click
  end

  def click_button_sub
    $driver.find_element(@mappings['button_Sub']).click
  end

  def click_button_mult
    $driver.find_element(@mappings['button_Mult']).click
  end

  def click_button_div
    $driver.find_element(@mappings['button_Div']).click
  end

  def assert_msg
    assert_not_nil get_result
    assert_not_equal 0, get_result
  end

end