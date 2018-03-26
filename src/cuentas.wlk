
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) {
		saldo = saldo +  (monto / 100 * 80)
	} 

	method extraer(monto) {
		if(saldo - monto >= 5) {
			saldo = saldo - (monto + 5)
		}
		 else saldo = saldo - monto
	}
}

object cuentaPapa {
	var saldoUsd = 0
	var precioDeVenta = 15.10
	var precioCompra = 14.70
	method saldo() = saldoUsd * precioCompra
	
	method depositar(monto) {
		saldoUsd = saldoUsd + (monto / (precioDeVenta))
	}
	
	method extraer(monto) {
		saldoUsd = saldoUsd - (monto / precioCompra)
	}
}






