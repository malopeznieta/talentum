variable1 = -2

if variable1 == 1 then
  puts "Pues va a ser que si!"
end

if variable1 != 1
  puts "Pues va a ser que no!"
end

if variable1 == 2
  puts "Pues va a ser que si porque lo digo yo!"
else
  puts "Llego al else!"
end

if variable1==1 || variable1==2
  puts "Pues va a ser que es uno o es dos!"
end

if variable1 >= 0
  puts "Pues va a ser positivo!"
end

if variable1 > 0 then
  puts "Mayor que cero"
elsif variable1 == -2
  puts "es menos 2"
elsif variable1<0
  puts "Menor que 0"
else
  puts "por huevos es cero!"
end

puts "Por huevos es -2!!!!!!" if variable1==-2
puts variable1==0?"Es cero":"No es 0"

variable=nil

if !variable then
  puts "la variable es nula"
end

unless variable
  puts "variable es nula"
end

variable =3
if variable == 1 then
  puts "Es uno"
elsif variable == 2 then
  puts "Es dos"
elsif variable == 3 then
  puts "Es tres"
else
  puts "No es ni uno, ni dos, ni tres"
end

case
when variable == 1 then
  puts "Es uno con el case"
when variable == 2 then
  puts "Es dos con el case"
when variable == 3 then
  puts "Es tres con el case"
else
  puts "No es ni uno, ni dos, ni tres, con el case"
end

case variable
when 1 then
  puts "Es uno con el case 2"
when 2 then
  puts "Es dos con el case 2"
when 3 then
  puts "Es tres con el case 2"
else
  puts "No es ni uno, ni dos, ni tres, con el case 2"
end

case variable
when 1..10 then
  puts "El valor de la variable (#{variable}) esta entre 1 y 10 "
when 11..20 then
  puts "El valor de la variable (#{variable}) esta entre 11 y 20 "
else
 puts "ni idea"
end







