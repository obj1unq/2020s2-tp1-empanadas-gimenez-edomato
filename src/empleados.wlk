object gimenez {
    var property fondo = 300000

    method pagarSueldo(persona) {
        fondo -= persona.sueldo()
    }
}

object galvan {
    var property sueldo = 15000

    method sueldo(valor) { sueldo = valor }
}

object baigorria {
    var empanadasVendidas = 0

    method vender(cantidad) { empanadasVendidas += cantidad }

    method sueldo() { return empanadasVendidas * 15 }
}
