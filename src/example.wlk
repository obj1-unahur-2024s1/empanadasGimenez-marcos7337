
// EMPLEADOS
object galvan {
	var dinero = 0
	var deuda = 0
	
	method sueldo() {
		return 150000
	}
	method cobrarSueldo() {
		dinero += self.sueldo()
	}
	method gastar(cantidad) {
		deuda = if(cantidad > dinero){deuda + (cantidad-dinero)}  else {deuda}
		dinero = (dinero-cantidad).max(0)
	}
}

object baigorria {
	var empanadasVendidas = 0
	var totalCobrado = 0
	method sueldo() {
		return empanadasVendidas * 150
	}
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	method venderEmpanadas(cantidad) {
		empanadasVendidas += cantidad
	}
}

// DUEÑO
object gimenez {
	var fondoParaSueldos = 3000000
	method pagarA(empleado) {
		fondoParaSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}