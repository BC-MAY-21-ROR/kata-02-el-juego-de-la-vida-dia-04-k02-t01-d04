require_relative '../reglas/Reglas'

class ESI < Reglas
    def vecinos
        no_Vecinos = @c_n[@j,(@i+1)] + @c_n[(@j+1),@i] + @c_n[(@j+1),(@i+1)] + @c_n[@j,(@i-1)]
        return self.reglas(no_Vecinos,@c_n[@j,@i])
    end
end