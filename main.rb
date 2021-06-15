require 'matrix'
require_relative 'iniciales/matriz_inicial'
require_relative 'iniciales/display'
#cuadrante
require_relative 'cuadrante/ESI'
require_relative 'cuadrante/BS'
require_relative 'cuadrante/ESD'
require_relative 'cuadrante/BI'
require_relative 'cuadrante/BD'
require_relative 'cuadrante/Centro'
require_relative 'cuadrante/EII'
require_relative 'cuadrante/BIN'
require_relative 'cuadrante/EID'




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
    if i==0 && j==0
      esi = ESI.new(cuadricula,i,j)
      cuadricula_new[j,i] = esi.vecinos
    elsif i!=0 && j==0 && i!=(x-1)
      bs = BS.new(cuadricula,i,j)
      cuadricula_new[j,i] = bs.vecinos
    elsif i==(x-1) && j==0
      esd = ESD.new(cuadricula,i,j)
      cuadricula_new[j,i] = esd.vecinos
    elsif i==0 && j!=0 && j!=(y-1) 
      bi = BI.new(cuadricula,i,j)
      cuadricula_new[j,i] = bi.vecinos
    elsif j!=0 && i!=0 && i==(x-1) && j!=(y-1)
      bd = BD.new(cuadricula,i,j)
      cuadricula_new[j,i] = bd.vecinos
    elsif  i!=0 && j!=0 && i!=(x-1) && j!=(y-1)
      centro = Centro.new(cuadricula,i,j)
      cuadricula_new[j,i] = centro.vecinos
    elsif  i==0 && j==(y-1)
      eii = EII.new(cuadricula,i,j)
      cuadricula_new[j,i] = eii.vecinos 
    elsif  i==(x-1) && j==(y-1)
      eid = EID.new(cuadricula,i,j)
      cuadricula_new[j,i] = eid.vecinos
    elsif  i!=0 && j==(y-1) && i!=(x-1)
      bin = BIN.new(cuadricula,i,j)
      cuadricula_new[j,i] = bin.vecinos  
    end
  end
end

Display.new(cuadricula_new,x,y,2)




