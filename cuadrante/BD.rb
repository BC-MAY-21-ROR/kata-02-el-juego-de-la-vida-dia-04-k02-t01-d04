require_relative '../reglas/Reglas'

class BD < Reglas 
    def vecinos
        no_Vecinos = @c_n[(@j-1),(@i-1)] + @c_n[(@j-1),@i] + @c_n[@j,(@i-1)] + @c_n[(@j+1),(@i-1)] + @c_n[(@j+1),@i] 
        return self.reglas(no_Vecinos,@c_n[@j,@i])
    end
end