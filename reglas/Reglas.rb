class Reglas
    def initialize(c_n,i,j)
        @c_n = c_n
        @i = i
        @j = j
    end

    def no_Vecinos
        no_Vecinos = 0
        for x in (@i-1)..(@i+1) do
            for y in (@j-1)..(@j+1) do
                if(!@c_n[y,x].nil?)
                    y == @j && x== @i ? no_Vecinos += 0 : no_Vecinos += @c_n[y,x]
                end
            end
        end
        return self.reglas(no_Vecinos, @c_n[@j,@i])
    end
    
    def reglas (no_Vecinos, numero)
        if numero == 1 && no_Vecinos < 2
            return 0
        elsif numero == 1 && no_Vecinos > 3 
            return 0
        elsif numero == 1 && (no_Vecinos == 2 || no_Vecinos ==3) 
            return 1
        elsif numero==0 && no_Vecinos == 3 
            return 1
        else 
            return 0
        end
    end
end