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
        const dineroActual = dinero + sueldo
        dinero = 0.max(dineroActual - deuda)
        deuda = 0.max(deuda - dineroActual)
    }

    method gastar(cuanto) {
        const deudaActual = deuda + cuanto
        deuda = 0.max(deudaActual - dinero)
        dinero = 0.max(dinero - deudaActual)
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
