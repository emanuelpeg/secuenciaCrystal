require "./secuencia.cr"

class Juego

  getter puntos

  @secuencia : Secuencia

  def initialize()
    @puntos = 0
    @secuencia = generarSecuencia()
  end

  def generarSecuencia() : Secuencia
    i = rand(2)

    case i
        when 0
          SecuenciaPar.new
        else
          SecuenciaInPar.new
    end
  end

  def valor1()
    @secuencia.secuencia[0]    
  end

  def valor2()
    @secuencia.secuencia[1]    
  end

  def valor4()
    @secuencia.secuencia[3]    
  end

  def esta_bien?(num : Int32?) : Bool
    if @secuencia.secuencia[2] == num
       @puntos = @puntos + 1
       @secuencia = generarSecuencia()
       true
    else 
       @puntos = @puntos - 1
       @secuencia = generarSecuencia()
       false
    end
  end

end