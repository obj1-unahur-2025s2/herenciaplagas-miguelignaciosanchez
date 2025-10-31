// plagas
class Plaga {
    var poblacion
    method poblacion() {
        return poblacion
    }
    method nivelDeDaño()
    method transmiteEnfermedades() {
        return poblacion >= 10 && self.condicionAdicionalParaTransmitir()
    }
    method condicionAdicionalParaTransmitir()
    method atacar(elemento) {
        elemento.recibirAtaque(self)
        self.efectoDelAtaque()
    }
    method efectoDelAtaque() {
        poblacion *= 1.1
    }
}

class PlagaDeCucarachas inherits Plaga {
    var pesoPromedio
    method pesoPromedio() {
        return pesoPromedio
    }
    override method nivelDeDaño() {
        return poblacion / 2
    }
    override method condicionAdicionalParaTransmitir() {
        return pesoPromedio >= 10
    }
    override method efectoDelAtaque() {
        super()
        pesoPromedio += 2
    }
}

class PlagaDePulgas inherits Plaga {
    override method nivelDeDaño() {
        return poblacion * 2
    }
    override method condicionAdicionalParaTransmitir() {
        return true
    }
}

class PlagaDeGarrapatas inherits Plaga {
    override method nivelDeDaño() {
        return poblacion * 2
    }
    override method condicionAdicionalParaTransmitir() {
        return true
    }
    override method efectoDelAtaque() {
        poblacion *= 1.2
    }
}

class PlagaDeMosquitos inherits Plaga {
    override method nivelDeDaño() {
        return poblacion
    }
    override method condicionAdicionalParaTransmitir() {
        return poblacion % 3 == 0
    }
}