Dado('que estou na calculadora') do
  log('Inicio dos testes')
  @calc = CalculatorPage.new
  sleep 2
end

Dado('informo o primeiro número') do
  @calc.fill_first_number 2
end

Dado('informo o segundo número') do
  @calc.fill_second_number 3
end

Quando('clico no botão de somar') do
  @calc.click_button_sum
end

Entao('vejo o resultado da operação') do
  @calc.assert_msg
end

Quando('clico no botão de subtrair') do
  @calc.click_button_sub
end

Quando('clico no botão de multiplicar') do
  @calc.click_button_mult
end

Quando('clico no botão de dividir') do
  @calc.click_button_div
end
