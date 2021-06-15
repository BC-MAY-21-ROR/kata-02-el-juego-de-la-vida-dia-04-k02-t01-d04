class Matriz_inicial
    def initialize(x,y)
        @x = x
        @y = y
        @c_n = Matrix.build(y,x){rand.to_i}
        self.create_matrix
    end

    def create_matrix
        for i in 0..(@x-1) do
            for j in 0..(@y-1) do
                (i==0 || i==@x-1) || (j==0 || j==@y-1) ? @c_n[j,i] = 0 : @c_n[j,i] = rand(0..1) 
            end
        end
    end

    def get_matrix
        return @c_n
    end
end