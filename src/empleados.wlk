object gimenez {
    var property fondo = 300000

    method pagarSueldo(persona) {
        fondo -= persona.sueldo()
        persona.pagar()
    }
}

object galvan {
    var property sueldo = 15000

    method sueldo(valor) { sueldo = valor }
    method pagar() {}
}

object baigorria {
    var empanadasVendidas = 0
    var property totalCobrado = 0

    method vender(cantidad) { empanadasVendidas += cantidad }

    method sueldo() { return empanadasVendidas * 15 }

    method pagar() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
}
