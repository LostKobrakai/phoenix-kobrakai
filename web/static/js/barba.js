import Barba from "barba.js"
import Velocity from "velocity-animate"
import "velocity-animate/velocity.ui"

import SlideInTransition from "./transitions/SlideInTransition"
import SlideOutTransition from "./transitions/SlideOutTransition"

import projectsStagger from "./transitions/ProjectsStagger"

function init () {
	let logo = document.getElementById('headerimg')

	function resetLogo() {
		logo.src = logo.getAttribute('data-signee')
	}

	function initializeLogoListeners() {
		// Replace with back arrow on child pages
		logo.addEventListener('mouseenter', () => {
			if(Barba.HistoryManager.currentStatus().namespace === 'index') return
			logo.src = logo.getAttribute('data-arrow')
		}, false)

		// Revert image change
		logo.addEventListener('mouseleave', resetLogo, false)
	}

	function animationTrigger() {
		// let prev = Barba.HistoryManager.prevStatus() ? Barba.HistoryManager.prevStatus().namespace : null
		let current = Barba.HistoryManager.currentStatus().namespace

		if(current === 'index'){
			projectsStagger()
			resetLogo()
		}
	}

	// Start all the things
	initializeLogoListeners()

	Barba.Pjax.start()
	Barba.Pjax.cacheEnabled = false
	Barba.Prefetch.init()
	Barba.Pjax.getTransition = () => {
		return Barba.HistoryManager.prevStatus().namespace === 'index' 
			? SlideInTransition 
			: SlideOutTransition
	}
	Barba.Dispatcher.on('transitionCompleted', animationTrigger)
	animationTrigger()
}



export default { init }
