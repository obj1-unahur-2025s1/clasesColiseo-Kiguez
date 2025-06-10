class Gladiador {

    var property vida = 100 

    var fuerza

    var destreza

    method atacarGladiador(gladiador) {
        gladiador.recibirAtaque(self.poderDeAtaque())
    }

    method poderDeAtaque()

    method defensa()

    method recibirAtaque(daño) {
        vida = (vida - (self.defensa() - daño)).max(0)
    }
}

class Mirmillones inherits Gladiador (destreza = 15) {

    const arma

    const escudo

    override method poderDeAtaque() {
        return
            arma.daño() + fuerza
    }

    override method defensa() {
        return
            destreza + escudo.nivelDeArmadura()
    }
}

class Dimachaerus inherits Gladiador (fuerza = 10) {

    const armas = []

    method agregarArma(arma) {
        armas.add(arma)
    }

    override method poderDeAtaque() {
        return
            fuerza + armas.sum({a=>a.daño()})
    } 

    override method defensa() {
        return
            destreza / 2
    }

    override method atacarGladiador(gladiador) {
        destreza = destreza + 1
    }
}