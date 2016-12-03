import Barba from "barba.js"
import Velocity from "velocity-animate"
import "velocity-animate/velocity.ui"


export default Barba.BaseTransition.extend({
	start: function() {
		Promise
			.all([this.newContainerLoading])
			.then(this.fadeIn.bind(this))
	},

	fadeIn () {
		this.oldContainer.style.display = 'none';
		
		Velocity(
			this.newContainer.querySelector('main'), 
			"transition.slideUpIn", 
			{ 
				duration: 325,
				delay: 250, 
				begin: () => this.newContainer.style.visibility = 'visible',
				complete: () => this.done()
			}
		)
	}
})