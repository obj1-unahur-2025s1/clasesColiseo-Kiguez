class ArmaFilosa {
  const largoDelArma
  const filo

  method daño() = filo * largoDelArma

  method initialize() {
    if(not filo.between(-1, 2)) {
      self.error(filo.toString() + " no es un numero valido para el filo, los valores validos son: 0 y 1.")
    }
  }
}

class ArmaContundente {
  const peso

  method daño() = peso 
}

class Casco {

  method nivelDeArmadura() = 10
}

class Escudo {

  method nivelDeArmadura(gladiador) = 5 + gladiador.destreza() * 0.1  
}