require 'matrix'
require_relative 'iniciales/matriz_inicial'
require_relative 'iniciales/display'
#cuadrante
require_relative 'reglas/Reglas'

puts "Bienvenido al juego de la vida"
puts "Ingrese las medidas de la cuadricula: "

puts "Columnas:"  
x = gets.chomp.to_i

puts "filas:"
y = gets.chomp.to_i

cuadricula = Matriz_inicial.new(x,y)
cuadricula_new = Matrix.build(y,x){rand.to_i}
cuadricula = cuadricula.get_matrix

Display.new(cuadricula,x,y,1)

for i in 0..(x-1) do
  for j in 0..(y-1) do
    valor = Reglas.new(cuadricula,i,j)
    cuadricula_new[j,i] = valor.no_Vecinos  
  end
end

Display.new(cuadricula_new,x,y,2)




