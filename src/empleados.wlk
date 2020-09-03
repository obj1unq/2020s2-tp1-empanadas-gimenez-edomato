object gimenez {
    var fondo = 300000

    method fondo() { return fondo }

    method pagarSueldo(persona) {
        fondo -= persona.sueldo()
    }
}

object galvan {
    var sueldo = 15000

    method sueldo() { return sueldo }
    method sueldo(valor) { sueldo = valor }
}

object baigorria {
    var empanadasVendidas = 0

    method vender(cantidad) { empanadasVendidas += cantidad }

    method sueldo() { return empanadasVendidas * 15 }
}
