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