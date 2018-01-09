require "./secuenciaCrystal/*"
require "./juego.cr"


module SecuenciaCrystal
  puts "Bienvenido a Secuancia Crystal"
  juego = Juego.new
  while true
    puts juego.valor1.to_s + " " + juego.valor2.to_s + " ______ " + juego.valor4.to_s + " \n"
    puts "Ingere el valor \n"
    
    valorStr = gets.to_s
    
    valor = (valorStr).to_i32

    if juego.esta_bien?(valor)
      puts " Ganaste !! Tus puntos : " + juego.puntos.to_s
    else 
      puts " Perdiste !! Tus puntos : " + juego.puntos.to_s 
    end
    puts "Ingere 0 para salir y otro valor para continuar"
    if gets()  == "0" 
      break
    end

  end
  puts "Bye!"
end
