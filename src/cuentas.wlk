
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

//Parte 2 
object casaPepeJulian {
	var epoca = cuentaDePepe
	var derrocha = 0
	
	
	method queEpoca() {
		return epoca
	}
	method cambiarEpoca(nuevaEpoca) {
		epoca = nuevaEpoca
	}
	
	method derrochona() {
		return derrocha > 40000
	}
	
	method compra(monto) {
		epoca.extraer(monto)
		derrocha += monto
	}
	
	method esBacan() {
		return epoca.saldo() > 40000 
	}
}


//Parte 3 
object cuentaCombinada {
	var primaria = cuentaDePepe
	var secundaria = cuentaDeJulian
	
	method saldo() {
		return primaria.saldo() + secundaria.saldo()
	}
	
	method depositar(monto) {
		if(secundaria.saldo() < 1000) {
			secundaria.depositar(monto)
			
		}else primaria.depositar(monto)
	} 
	
	method extraer(monto) {
		primaria.extraer(monto)
		//sin terminar
		
	}
}









