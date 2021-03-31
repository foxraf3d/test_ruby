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
  @calc.assert_msg '5'
end

Quando('clico no botão de subtrair') do
end

Quando('clico no botão de multiplicar') do
end
