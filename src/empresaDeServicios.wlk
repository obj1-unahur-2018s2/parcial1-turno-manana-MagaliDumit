import universidad.*
import profesionales.*

class Empresa { 
	var profesionales= #{}
	var honorario
	method honorariosReferencia() {return honorario}
	method setHonorariosReferencia(num) {honorario = num}
	method universidadesFormadoras() {profesionales.find({ profecional => profecional.universidad()}) }
		 
	method profesionalesCaros() {return profesionales.filter( { profesional => profesional.honorariosPorHora() > honorario } )
	}
	
	method masBarato() { return profesionales.min({
		 profecional => profecional.honorariosPorHora()})}
		 
	
	method provinciaEstaCubierta() {return profesionales.find({
		profecional=> profecional.universidad() >= 1 }) }
		

	method cuantos(_universidad) { return profesionales.sum({profecional => profecional.universidad(_universidad)})}
		
		
	method pocoAtractivo() { profesionales.all({profecional => profecional.universidad() and  profesionales.any({ .honorariosPorHora() > .honorariosPorHora() }) 
	}
}



 