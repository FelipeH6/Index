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

# - Hash.new = cria nova hash = a colocar uma variável = {} (tem que estar em letra maiúscula)

pets = Hash.new 
pets["Mango"] = "dog"
pets["Gretel"] = "dog"

#or

pets = {
"Mango" => "dog",
"Gretel" => "dog"
}

puts pets["Mango"]

#- def = define um método. Usar o * quando o argumento possa receber um ou mais valores

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

#- blocks 

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"


# ≤⇒ forma de comparar um elemento com o outro (retorna 0 se forem iguis, 1 se o primeiro elemento for maior e -1 se o segundo elemento for maior
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook}
print books

def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


=begin
- Você pode determinar variantes de determinadas variantes colocando nomedavariante.length! (.reverse!, .upcase!, .downcase!)
- .gsub!(/oquequertrocar/, “troca”) = troca o que voce quiser
- .includes? “letra” = seleciona a letra que voce quer trocar
- .each = seleciona todos os elementos dentro de uma array
- .split(” ”) = divide uma string em uma array

- .gsub!(/oquequertrocar/, “troca”) = troca o que voce quiser
- .includes? “letra” = seleciona a letra que voce quer trocar
- .each = seleciona todos os elementos dentro de uma array
- .split(” ”) = divide uma string em uma array
- .sort_by = vai colocar em ordem (arrays de arrays)
- .to_s = converte o valor de um numero para uma string
- .to_a = converte o valor em uma array

Addition (`+`)

Subtraction (`-`)

Multiplication (`*`)

Division (`/`)

Exponentiation (`**`)

Modulo (`%`) = Te da o resto depois da divisão ex: 11 % 2 = 1  

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


puts "O que voce mais gosta?"
text = gets.chomp

words = text.split (" ")

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 } 

frequencies = frequencies.sort_by { |word, count| count}
frequencies.reverse!

frequencies.each { |word, count|
puts word + " " + count.to_s
}