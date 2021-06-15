class Display
    def initialize(matriz,x,y,generacion)
        @matriz = matriz
        @x = x
        @y =y
        @generacion = generacion
        self.display
    end

    def display
        puts "Generation: #{@generacion}"
        puts "#{@x} #{@y}\n"
        for i in 0..(@x-1) do
            for j in 0..(@y-1) do
                print @matriz[j,i] == 1 ? '*' : '.'
            end
            puts "\n"
        end
    end
end
