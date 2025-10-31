// elementos
class Hogar {
    var nivelDeMugre
    const confort
    method nivelDeMugre() {
        return nivelDeMugre
    }
    method esBueno() {
        return nivelDeMugre <= confort / 2
    }
    method recibirAtaque(plaga) {
        nivelDeMugre += plaga.nivelDeDaño()
    }
}

class Huerta {
    var capacidadDeProduccion
    method esBueno() {
        return capacidadDeProduccion > nivelDeProduccionMinimo.valor()
    }
    method recibirAtaque(plaga) {
        capacidadDeProduccion -= plaga.nivelDeDaño() * 0.1
        if (plaga.transmiteEnfermedades()) {
            capacidadDeProduccion -= 10
        }
    }
}

object nivelDeProduccionMinimo {
    var valor = 100
    method valor() {
        return valor
    }
    method valor(nuevoValor) {
        valor = nuevoValor
    }
}

class Mascota {
    var nivelDeSalud
    method esBueno() {
        return nivelDeSalud > 250
    }
    method recibirAtaque(plaga) {
        if (plaga.transmiteEnfermedades()) {
            nivelDeSalud -= plaga.nivelDeDaño()
        }
    }
}