# Seu João é um comerciante e ele precisa de um software que faça o cálculo
# da porcentagem de desconto que ele dará para os seus clientes no valor
# total da compra, faça um software que solicite o valor total do pedido
# solicite o valor da porcentagem e logo após mostre o valor com desconto
# e o valor descontado.
# João ficará MUITO feliz se você resolver o problema dele.
# Se o valor total descontado der inferior a 10 reais oferecer um produto a mais no pedido
# Perguntar o nome deste item e o valor dele
# Mudar o sistema para que ele pergunte qual o produto que o cliente pegou
# e o valor total deste produto
# O desconto será aplicado sobre o valor total
system 'clear'

puts "+=========================================================================+"
puts "|                      Olá, seu João! Tudo bem?                           |"   
puts "|               Vamos fazer o pedido do seu cliente?                      |"
puts "+=========================================================================+"

puts "\n"

puts "+------------------------------------------------------------------------+"
puts "                      Digite o nome do cliente:"
puts "+------------------------------------------------------------------------+"
puts "\n"
nome_cliente = gets.to_s.strip

system 'clear'

puts "+---------------------------------------------------------------------------+"
puts "     Olá, #{nome_cliente}, qual o nome do produto que você gostaria de adquirir?"
puts "+---------------------------------------------------------------------------+"
puts "\n"
nome_produto = gets.to_s.strip

puts "\n\n"

puts "+------------------------------------------------------------------------+"
puts "           Legal! Seu João, qual o valor do produto #{nome_produto}?"
puts "+------------------------------------------------------------------------+"
puts "\n"
valor_do_produto = gets.to_f

system 'clear'

puts "+------------------------------------------------------------------------+"
puts "      #{nome_cliente}, você gostaria de incluir um novo item no pedido?"
puts "     Se fizer isso, você poderá receber um desconto maior no valor total!"
puts "                                  (S/N)"
puts "+------------------------------------------------------------------------+"
puts "\n"
decisao_cliente = gets
adicionar_produto_a_mais = decisao_cliente.to_s.upcase.strip == "S"

system 'clear'

if adicionar_produto_a_mais
    puts "+------------------------------------------------------------------------+"
    puts "             Que bom! Por favor, digite o nome do produto:"
    puts "+------------------------------------------------------------------------+"
    puts "\n"
    nome_produto_novo = gets.to_s.strip
    puts "\n\n"
    puts "+------------------------------------------------------------------------+"
    puts "            Seu João, qual o valor do produto #{nome_produto_novo}?"
    puts "+------------------------------------------------------------------------+"
    puts "\n"
    valor_do_produto_novo = gets.to_f            
end  

system 'clear'

puts "+-----------------------------------------------------------------------------------------+"
puts "      E qual a porcentagem (%) de desconto a ser aplicada sobre o pedido de #{nome_cliente}? "
puts "+-----------------------------------------------------------------------------------------+"
puts "\n"
porcentagem_desconto = gets.to_f

if adicionar_produto_a_mais
    valor_total = valor_do_produto + valor_do_produto_novo 
else
    valor_total = valor_do_produto
end

valor_desconto = valor_total * porcentagem_desconto / 100
valor_com_desconto = valor_total - valor_desconto

system 'clear'

# mostrar resumo detalhado de tudo o que aconteceu, com nome e valores de produtos

puts "+==========================================================================================================================+"
puts "|                                                 RESUMO DA OPERAÇÃO                                                       |"
puts "+==========================================================================================================================+"
puts "\n"
puts "+--------------------------------------------------------------------------------------------------------------------------+"
puts "O produto adquirido por #{nome_cliente} foi #{nome_produto} no valor de R$#{valor_do_produto}"
puts "+--------------------------------------------------------------------------------------------------------------------------+"
if adicionar_produto_a_mais
    puts "O item a mais incluído no pedido foi #{nome_produto_novo} no valor de R$#{valor_do_produto_novo}"
end
puts "+--------------------------------------------------------------------------------------------------------------------------+"
puts "Foi aplicado um desconto de #{porcentagem_desconto}% sobre o pedido"
puts "+--------------------------------------------------------------------------------------------------------------------------+"
puts "O valor descontado é igual a R$#{valor_desconto}"
puts "+--------------------------------------------------------------------------------------------------------------------------+"
puts "\n"
puts "O valor total do pedido de #{nome_cliente} é igual a:"
puts "\n"
puts "+==========================================================================================================================+"
puts "                                                       R$ #{valor_com_desconto}"
puts "+==========================================================================================================================+"
puts "\n\n"
puts "+==========================================================================================================================+"
puts "|                                                      OBRIGADO!                                                           |"
puts "+==========================================================================================================================+"
