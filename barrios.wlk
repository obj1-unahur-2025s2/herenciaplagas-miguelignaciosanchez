// barrios
class Barrio {
    const elementos = []
    
    method agregarElemento(elemento) {
        elementos.add(elemento)
    }
    
    method esCopado() {
        return self.cantidadDeElementosBuenos() > self.cantidadDeElementosNoBuenos()
    }
    
    method cantidadDeElementosBuenos() {
        return elementos.count({ elemento => elemento.esBueno() })
    }
    
    method cantidadDeElementosNoBuenos() {
        return elementos.count({ elemento => !elemento.esBueno() })
    }
}