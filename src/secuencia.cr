
abstract class Secuencia

  @secuencia : Array(Int32)

  getter secuencia

  def initialize()
    @secuencia = generarSecuencia()
  end
 
  abstract def generarSecuencia() : Array(Int32)

end

class SecuenciaPar < Secuencia

  def generarSecuencia() : Array(Int32)
     Array(Int32).new(4) { |i|
       i * 2 * rand(100) + rand(10) * 2
     }

  end

end

class SecuenciaInPar < Secuencia

  def generarSecuencia() : Array(Int32)
    Array(Int32).new(4) { |i|
       i * 2 * rand(100) + rand(10) * 2 + 1
    }
  end

end