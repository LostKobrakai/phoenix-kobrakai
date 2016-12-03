import Barba from "barba.js"
import Velocity from "velocity-animate"
import "velocity-animate/velocity.ui"

export default Barba.BaseTransition.extend({
	start () {
		Promise
			.all([this.newContainerLoading, this.fadeOut()])
			.then(this.fadeIn.bind(this))
	},

	fadeOut () {
		return Velocity(
			this.oldContainer.querySelector('main'), 
			"transition.slideDownOut", 
			{ duration: 325 }
		)
	},

	fadeIn () {
		this.oldContainer.style.display = 'none'
		this.newContainer.style.visibility = 'visible'
		this.done()
	}
})