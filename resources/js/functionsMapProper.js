function getSegmentData(segment){
	let retorno = new Object();
	let dates = Object.keys(listDemandInventoryMappingByManagementUnit)
	switch(segment){
		case 'repRepetitivo_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.push
				let pull = target.repetitivo.pull
				let mto = target.repetitivo.mto
				let indefinido = target.repetitivo.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaA.push
				let pull = target.repetitivo.relevanciaA.pull
				let mto = target.repetitivo.relevanciaA.mto
				let indefinido = target.repetitivo.relevanciaA.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsAlta.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsAlta.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsAlta.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsAlta.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaA.previsAlta.push
				let pull = target.repetitivo.relevanciaA.previsAlta.pull
				let mto = target.repetitivo.relevanciaA.previsAlta.mto
				let indefinido = target.repetitivo.relevanciaA.previsAlta.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsBaixa.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsBaixa.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsBaixa.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsBaixa.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaA.previsBaixa.push
				let pull = target.repetitivo.relevanciaA.previsBaixa.pull
				let mto = target.repetitivo.relevanciaA.previsBaixa.mto
				let indefinido = target.repetitivo.relevanciaA.previsBaixa.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsIndefinida.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsIndefinida.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsIndefinida.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaA.previsIndefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaA.previsIndefinida.push
				let pull = target.repetitivo.relevanciaA.previsIndefinida.pull
				let mto = target.repetitivo.relevanciaA.previsIndefinida.mto
				let indefinido = target.repetitivo.relevanciaA.previsIndefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaB.push
				let pull = target.repetitivo.relevanciaB.pull
				let mto = target.repetitivo.relevanciaB.mto
				let indefinido = target.repetitivo.relevanciaB.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsAlta.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsAlta.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsAlta.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsAlta.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaB.previsAlta.push
				let pull = target.repetitivo.relevanciaB.previsAlta.pull
				let mto = target.repetitivo.relevanciaB.previsAlta.mto
				let indefinido = target.repetitivo.relevanciaB.previsAlta.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsBaixa.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsBaixa.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsBaixa.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsBaixa.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaB.previsBaixa.push
				let pull = target.repetitivo.relevanciaB.previsBaixa.pull
				let mto = target.repetitivo.relevanciaB.previsBaixa.mto
				let indefinido = target.repetitivo.relevanciaB.previsBaixa.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsIndefinida.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsIndefinida.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsIndefinida.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaB.previsIndefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaB.previsIndefinida.push
				let pull = target.repetitivo.relevanciaB.previsIndefinida.pull
				let mto = target.repetitivo.relevanciaB.previsIndefinida.mto
				let indefinido = target.repetitivo.relevanciaB.previsIndefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaC.push
				let pull = target.repetitivo.relevanciaC.pull
				let mto = target.repetitivo.relevanciaC.mto
				let indefinido = target.repetitivo.relevanciaC.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsAlta.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsAlta.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsAlta.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsAlta.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				let push = 	target.repetitivo.relevanciaC.previsAlta.push	
				let pull = target.repetitivo.relevanciaC.previsAlta.pull
				let mto = target.repetitivo.relevanciaC.previsAlta.mto
				let indefinido = target.repetitivo.relevanciaC.previsAlta.indefinida								
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = target.repetitivo.relevanciaC.previsAlta.total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsBaixa.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsBaixa.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsBaixa.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsBaixa.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaC.previsBaixa.push
				let pull = target.repetitivo.relevanciaC.previsBaixa.pull
				let mto = target.repetitivo.relevanciaC.previsBaixa.mto
				let indefinido = target.repetitivo.relevanciaC.previsBaixa.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsIndefinida.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsIndefinida.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsIndefinida.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relevanciaC.previsIndefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relevanciaC.previsIndefinida.push
				let pull = target.repetitivo.relevanciaC.previsIndefinida.pull
				let mto = target.repetitivo.relevanciaC.previsIndefinida.mto
				let indefinido = target.repetitivo.relevanciaC.previsIndefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relIndefinda.push
				let pull = target.repetitivo.relIndefinda.pull
				let mto = target.repetitivo.relIndefinda.mto
				let indefinido = target.repetitivo.relIndefinda.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.indefinida.push;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.indefinida.pull;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.indefinida.mto;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.repetitivo.relIndefinda.indefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.repetitivo.relIndefinda.indefinida.push
				let pull = target.repetitivo.relIndefinda.indefinida.pull
				let mto = target.repetitivo.relIndefinda.indefinida.mto
				let indefinido = target.repetitivo.relIndefinda.indefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repEsporadico_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.push;
			})
			return retorno;
			break;		
		case 'repEsporadico_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.pull;
			})
			return retorno;
			break;		
		case 'repEsporadico_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.mto;
			})
			return retorno;
			break;		
		case 'repEsporadico_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.indefinida;
			})
			return retorno;
			break;		
		case 'repEsporadico_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				let push = target.esporadico.push;				
				let pull = target.esporadico.pull 
				let mto = target.esporadico.mto
				let indefinido = target.esporadico.indefinida;				
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.push;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.pull;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.mto;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.esporadico.relIndefinida.push
				let pull = target.esporadico.relIndefinida.pull
				let mto = target.esporadico.relIndefinida.mto
				let indefinido = target.esporadico.relIndefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsAlta.push;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsAlta.pull;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsAlta.mto;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsAlta.indefinida;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.esporadico.relIndefinida.previsAlta.push
				let pull = target.esporadico.relIndefinida.previsAlta.pull
				let mto = target.esporadico.relIndefinida.previsAlta.mto
				let indefinido = target.esporadico.relIndefinida.previsAlta.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsBaixa.push;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsBaixa.pull;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsBaixa.mto;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsBaixa.indefinida;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.esporadico.relIndefinida.previsBaixa.push
				let pull = target.esporadico.relIndefinida.previsBaixa.pull
				let mto = target.esporadico.relIndefinida.previsBaixa.mto
				let indefinido = target.esporadico.relIndefinida.previsBaixa.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsIndefinida.push;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsIndefinida.pull;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsIndefinida.mto;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.esporadico.relIndefinida.previsIndefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.esporadico.relIndefinida.previsIndefinida.push
				let pull = target.esporadico.relIndefinida.previsIndefinida.pull
				let mto = target.esporadico.relIndefinida.previsIndefinida.mto
				let indefinido = target.esporadico.relIndefinida.previsIndefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.push;
			})
			return retorno;
			break;		
		case 'repUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.pull;
			})
			return retorno;
			break;		
		case 'repUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.mto;
			})
			return retorno;
			break;		
		case 'repUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.indefinida.push
				let pull = target.indefinida.pull
				let mto = target.indefinida.mto
				let indefinido = target.indefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.push;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.pull;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.mto;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.indefinida.push
				let pull = target.indefinida.pull
				let mto = target.indefinida.mto
				let indefinido = target.indefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.push;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.pull;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.mto;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.indefinida.indefinida;
			})
			return retorno;
			break;		
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.indefinida.push
				let pull = target.indefinida.pull
				let mto = target.indefinida.mto
				let indefinido = target.indefinida.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_proper_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];								
				retorno[data] = target.totalProper.push;
			})
			return retorno;
			break;		
		case 'total_proper_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];								
				retorno[data] = target.totalProper.pull;
			})
			return retorno;
			break;		
		case 'total_proper_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.mto;
			})
			return retorno;
			break;		
		case 'total_proper_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.indefinida;
			})
			return retorno;
			break;		
		case 'total_proper_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalProper.push
				let pull = target.totalProper.pull
				let mto = target.totalProper.mto
				let indefinido = target.totalProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_proper_total_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.push;
			})
			return retorno;
			break;		
		case 'total_proper_total_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.pull;
			})
			return retorno;
			break;		
		case 'total_proper_total_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.mto;
			})
			return retorno;
			break;		
		case 'total_proper_total_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.indefinida;
			})
			return retorno;
			break;		
		case 'total_proper_total_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalProper.push
				let pull = target.totalProper.pull
				let mto = target.totalProper.mto
				let indefinido = target.totalProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_proper_total_total_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.push;
			})
			return retorno;
			break;		
		case 'total_proper_total_total_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.pull;
			})
			return retorno;
			break;		
		case 'total_proper_total_total_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.mto;
			})
			return retorno;
			break;		
		case 'total_proper_total_total_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalProper.indefinida;
			})
			return retorno;
			break;		
		case 'total_proper_total_total_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalProper.push
				let pull = target.totalProper.pull
				let mto = target.totalProper.mto
				let indefinido = target.totalProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'out_scope_repetitividade_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.push;
			})
			return retorno;
			break;		
		case 'out_scope_repetitividade_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.pull;
			})
			return retorno;
			break;		
		case 'out_scope_repetitividade_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.mto;
			})
			return retorno;
			break;		
		case 'out_scope_repetitividade_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.indefinida;
			})
			return retorno;
			break;		
		case 'out_scope_repetitividade_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.outOfScopeProper.push
				let pull = target.outOfScopeProper.pull
				let mto = target.outOfScopeProper.mto
				let indefinido = target.outOfScopeProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'out_scope_relevancia_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.push;
			})
			return retorno;
			break;		
		case 'out_scope_relevancia_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.pull;
			})
			return retorno;
			break;		
		case 'out_scope_relevancia_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.mto;
			})
			return retorno;
			break;		
		case 'out_scope_relevancia_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.indefinida;
			})
			return retorno;
			break;		
		case 'out_scope_relevancia_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.outOfScopeProper.push
				let pull = target.outOfScopeProper.pull
				let mto = target.outOfScopeProper.mto
				let indefinido = target.outOfScopeProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'out_scope_previsibilidade_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.push;
			})
			return retorno;
			break;		
		case 'out_scope_previsibilidade_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.pull;
			})
			return retorno;
			break;		
		case 'out_scope_previsibilidade_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.mto;
			})
			return retorno;
			break;		
		case 'out_scope_previsibilidade_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.outOfScopeProper.indefinida;
			})
			return retorno;
			break;		
		case 'out_scope_previsibilidade_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.outOfScopeProper.push
				let pull = target.outOfScopeProper.pull
				let mto = target.outOfScopeProper.mto
				let indefinido = target.outOfScopeProper.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_management_group_repetitividade_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.push;
			})
			return retorno;
			break;		
		case 'total_management_group_repetitividade_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.pull;
			})
			return retorno;
			break;		
		case 'total_management_group_repetitividade_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.mto;
			})
			return retorno;
			break;		
		case 'total_management_group_repetitividade_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.indefinida;
			})
			return retorno;
			break;		
		case 'total_management_group_repetitividade_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalManagementGroup.push
				let pull = target.totalManagementGroup.pull
				let mto = target.totalManagementGroup.mto
				let indefinido = target.totalManagementGroup.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_management_group_relevancia_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.push;
			})
			return retorno;
			break;		
		case 'total_management_group_relevancia_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.pull;
			})
			return retorno;
			break;		
		case 'total_management_group_relevancia_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.mto;
			})
			return retorno;
			break;		
		case 'total_management_group_relevancia_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.indefinida;
			})
			return retorno;
			break;		
		case 'total_management_group_relevancia_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalManagementGroup.push
				let pull = target.totalManagementGroup.pull
				let mto = target.totalManagementGroup.mto
				let indefinido = target.totalManagementGroup.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
		case 'total_management_group_previsibilidade_cell_pmPush':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.push;
			})
			return retorno;
			break;		
		case 'total_management_group_previsibilidade_cell_pmPull':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.pull;
			})
			return retorno;
			break;		
		case 'total_management_group_previsibilidade_cell_pmMto':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.mto;
			})
			return retorno;
			break;		
		case 'total_management_group_previsibilidade_cell_pmUndefined':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				retorno[data] = target.totalManagementGroup.indefinida;
			})
			return retorno;
			break;		
		case 'total_management_group_previsibilidade_cell_pmTotal':
			dates.forEach(data=>{				
				let target = listDemandInventoryMappingByManagementUnit[data];				
				
				let push = target.totalManagementGroup.push
				let pull = target.totalManagementGroup.pull
				let mto = target.totalManagementGroup.mto
				let indefinido = target.totalManagementGroup.indefinida
				let total = getTotalValues(push,pull,mto,indefinido)
				retorno[data] = total;
			})
			return retorno;
			break;		
	}	
}


function getLabelModalGraphSegment(target,labels){	
	switch(target){
		case 'repRepetitivo_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevAlta_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevBaixa_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceA_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaA} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevAlta_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevBaixa_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceB_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaB} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevAlta_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevBaixa_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceC_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.relevanciaC} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repRepetitivo_relevanceUndefined_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.repetitivo} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repEsporadico_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repEsporadico_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repEsporadico_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repEsporadico_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repEsporadico_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevAlta_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.alta} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevBaixa_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.baixa} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repEsporadico_relevanceUndefined_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.esporadico} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'repUndefined_relevanceUndefined_prevUndefined_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.indefinido} ⇾ ${labels.relevancia} ${labels.indefinido} ⇾  ${labels.previsibilidade} ${labels.indefinido} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break; 
		case 'total_proper_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_proper_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_proper_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_proper_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_proper_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'total_proper_total_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_proper_total_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_proper_total_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_proper_total_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_proper_total_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'total_proper_total_total_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_proper_total_total_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_proper_total_total_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_proper_total_total_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_proper_total_total_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalProper} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break; 
		case 'out_scope_repetitividade_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'out_scope_repetitividade_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'out_scope_repetitividade_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'out_scope_repetitividade_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'out_scope_repetitividade_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'out_scope_relevancia_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'out_scope_relevancia_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'out_scope_relevancia_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'out_scope_relevancia_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'out_scope_relevancia_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'out_scope_previsibilidade_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'out_scope_previsibilidade_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'out_scope_previsibilidade_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'out_scope_previsibilidade_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'out_scope_previsibilidade_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.outOfScope} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break; 
		case 'total_management_group_repetitividade_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_management_group_repetitividade_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_management_group_repetitividade_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_management_group_repetitividade_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_management_group_repetitividade_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'total_management_group_relevancia_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_management_group_relevancia_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_management_group_relevancia_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_management_group_relevancia_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_management_group_relevancia_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
		case 'total_management_group_previsibilidade_cell_pmPush':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.push}`
			return retorno;
			break;
		case 'total_management_group_previsibilidade_cell_pmPull':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.pull}`
			return retorno;
			break;
		case 'total_management_group_previsibilidade_cell_pmMto':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.mto}`
			return retorno;
			break;
		case 'total_management_group_previsibilidade_cell_pmUndefined':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.indefinido}`
			return retorno;
			break;
		case 'total_management_group_previsibilidade_cell_pmTotal':
			var retorno = `${labels.repetitividade} ${labels.totalMngmntGroup} ⇾ ${labels.planningMethod} ${labels.total}`
			return retorno;
			break;
	}



			return retorno;


}
