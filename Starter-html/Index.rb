=begin
- my_num = to the value `25` (o que voce quiser como sua constante)
- my_boolean = to the value `true` (note the capitalization!)
- my_string =  to the value `"Nome que voce quiser"`
- puts = vai dar uma quebra depois do mostrar o resultado
- print = vai mostrar o resultado e seguir na mesma linha
- gets.= pega imput do user (adiciona uma nova linha ou uma em branco)
- gets.chomp = retira essa linha
- #{constante} = Vai mostrar na sentença a variante que você determinou antes
- Você pode determinar variantes de determinadas variantes colocando nomedavariante.length! (.reverse!, .upcase!, .downcase!)
- # = comentarios de uma linha
- =begin - Comentários de mais de uma  linha! =end
- if/elsif/else/unless = Condicionais (elsif outra condição do if)
- == - compara se duas condicionais são iguais
- (! =)  = compara se duas condicionais são diferentes
- && = Compara várias condições e coloca com true se todas as condições forem true.
- || = Compara várias condições e coloca com true se uma ou todas as condições forem true.
- ! = faz com que true seja false e false seja true
- while = loop para chegar em determinado valor (enquanto) = repita isso enquanto
- until = loop para encontrar determinado valor (ate) = repita isso ate que
- +=, -=, *=, /= são atalhos para colocar uma variável  exemplo - counter = counter +1 pode ser subst por counter += 1
- for = você pode usar quando souber quantas vezes seu loop  vai rodar. ex = for num in 1…10
- .. , … = Na frase acima com .. você inclui o maior número e com … você não inclui
- loop, do, break = ver exepmplo 3
- next = usada pra pular no meio do loop  ex = object.each { |item| } = ver exemplo 4
- “do/end” pode substituir “{}”
- .times = modo compacto de “for”
- multi_d_array = arrays dentro de arrays ex: minha_array = [[0, 1, 2, 3],[4, 5, 6, 7]]
- Da pra selecionar um index dentro de um array (comecando no index 0 ) ex: array = [2, 4, 6,] // array[0] vai ser o numero 2
- hash = conjunto de variaveis, ex:
=end

my_hash = { "name" => "Felipe",
  "age" => 28
  "hungry?" => true

# - H[ash.new](http://hash.new) = cria nova hash = a colocar uma variável = {} (tem que estar em letra maiúscula)

pets = Hash.new 
pets["Mango"] = "dog"
pets["Gretel"] = "dog"

#or

pets = {
"Mango" => "dog",
"Gretel" => "dog"
}

puts pets["Mango"]

=begin
- Você pode determinar variantes de determinadas variantes colocando nomedavariante.length! (.reverse!, .upcase!, .downcase!)
- .gsub!(/oquequertrocar/, “troca”) = troca o que voce quiser
- .includes? “letra” = seleciona a letra que voce quer trocar
- .each = seleciona todos os elementos dentro de uma array
- .split(” ”) = divide uma string em uma array

- .gsub!(/oquequertrocar/, “troca”) = troca o que voce quiser
- .includes? “letra” = seleciona a letra que voce quer trocar
- .each = seleciona todos os elementos dentro de uma array

Addition (`+`)

Subtraction (`-`)

Multiplication (`*`)

Division (`/`)

Exponentiation (`**`)

Modulo (`%`)

=end

print "What`s your first name?"
first_name = gets.chomp
puts "Hi #{first_name.capitalize!}!"

print "What`s your laste name?"
last_name = gets.chomp
last_name.capitalize!
puts "Your last name is #{last_name}"

print "What city do you live?"
city = gets.chomp
city.capitalize!
puts "What a beautiful city #{city} is!"

print "In what State?"
state = gets.chomp
state.upcase!
puts "You live #{city} in #{state}!"



print "Escolha um numero inteiro: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "Voce escolheu um numero negativo!"
elsif user_num > 0
  puts "Voce escolheu umm numero positivo!"
else
  puts "Yoce escolheu zero!"
end

i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i},"
  break if i <= 0
end

array = [1,2,3,4,5]
array.each do |x|
  x *= 10
  print "#{x}"
end