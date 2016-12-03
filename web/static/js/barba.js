import Barba from "barba.js"
import Velocity from "velocity-animate"
import "velocity-animate/velocity.ui"

import SlideInTransition from "./transitions/SlideInTransition"
import SlideOutTransition from "./transitions/SlideOutTransition"

import projectsStagger from "./transitions/ProjectsStagger"

let logo = document.getElementById('headerimg')

const initializeLogoListeners = () => {
	logo = document.getElementById('headerimg')

	logo.addEventListener('mouseenter', () => {
		if(Barba.HistoryManager.currentStatus().namespace === 'index') return
		logo.src = logo.getAttribute('data-arrow')
	}, false)

	logo.addEventListener('mouseleave', () => {
		logo.src = logo.getAttribute('data-signee')
	}, false)
}

const resetLogo = () => {
	logo.src = logo.getAttribute('data-signee')
}

const animationTrigger = () => {
	// let prev = Barba.HistoryManager.prevStatus() ? Barba.HistoryManager.prevStatus().namespace : null
	let current = Barba.HistoryManager.currentStatus().namespace

	if(current === 'index'){
		projectsStagger()
		resetLogo()
	}
}

export default {
	init () {
		initializeLogoListeners()

		Barba.Pjax.start()
		Barba.Prefetch.init()
		Barba.Pjax.getTransition = () => {
			return Barba.HistoryManager.prevStatus().namespace === 'index' 
				? SlideInTransition 
				: SlideOutTransition
		}
		Barba.Dispatcher.on('transitionCompleted', animationTrigger)
		animationTrigger()
	}
}
