import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	
	method provinciasDondePuedeTrabajar() {
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() { 
		return 3000
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var provincia
	var honorario
	
	method universidad() {
		return universidad
	}
	method setUniversidad(univ) { 
		universidad = univ
	}
	method setProvinciasDondePuedeTrabajar() {
		provincia = universidad.provinciaRecomendados()
	}
	
	method provinciasDondePuedeTrabajar() { 
		return provincia
	} 
	method setHonorariosPorHora() {
		honorario = universidad.honorariosRecomendados()
	}
	method honorariosPorHora() {
		return  honorario
	} 
	
	method cobro() {
		honorario = honorario / 2 
		return 0
	}
}



// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provincia
	var honorario
	
	method universidad() { 
		return universidad
	}
	method setUniversidad(univ) { 
		universidad = univ
	}
	method provinciasDondePuedeTrabajar() {
		return provincia
	}
	method setProvinciasDondePuedeTrabajar(_provincia) {
		provincia = _provincia
	}
	method honorariosPorHora() {
		return honorario
	}
	method setHonorariosPorHora(_honorario) { 
		honorario = _honorario
	}
	method cobro() { return honorario }
	method pasar(profesional,monto) { 
	self.honorariosPorHora() - monto
	return 	profesional.honorariosPorHora() + monto
		
	}
}
