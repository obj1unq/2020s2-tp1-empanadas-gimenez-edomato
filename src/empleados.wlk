object gimenez {
    var property fondo = 300000

    method pagarSueldo(persona) {
        fondo -= persona.sueldo()
        persona.cobrar()
    }
}

object galvan {
    var property sueldo = 15000
    var property deuda = 0
    var property dinero = 0

    method cobrar() {
        deuda -= sueldo
        if (deuda < 0) {
            dinero -= deuda // - * - = +
            deuda = 0
        }
    }

    method gastar(cuanto) {
        dinero -= cuanto
        if (dinero < 0) {
            deuda -= dinero // - * - = +
            dinero = 0
        }
    }
}

object baigorria {
    var empanadasVendidas = 0
    var property totalCobrado = 0

    method vender(cantidad) { empanadasVendidas += cantidad }

    method sueldo() { return empanadasVendidas * 15 }

    method cobrar() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
}
