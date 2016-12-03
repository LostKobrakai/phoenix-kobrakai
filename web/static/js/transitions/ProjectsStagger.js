import Velocity from "velocity-animate"
import "velocity-animate/velocity.ui"

export default () => {
	let projects = [].slice.call(document.querySelectorAll('#projects li'))

	projects.forEach(el => el.style.opacity = 0)

	Velocity(
		projects, "transition.slideUpIn", 
		{ stagger: 55, drag: true, duration: 325, delay: 300 }
	)
}