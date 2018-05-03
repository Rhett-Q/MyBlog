$(function() {
	
	
	if ($(window).width() > 992) {
		
		var headerHeight = $('#mainNav').height();
		
		$(window).on('scroll', {
				previousTop: 0
			},
			function() {
				var currentTop = $(window).scrollTop();
				
				if (currentTop < this.previousTop) {
					if (currentTop > 0 && $('#mainNav').hasClass('is-fixed')) {
						$('#mainNav').addClass('is-visible');
					} else {
						$('#mainNav').removeClass('is-visible is-fixed');
					}
				} else if (currentTop > this.previousTop) {
					$('#mainNav').removeClass('is-visible');
					if (currentTop > headerHeight && !$('#mainNav').hasClass('is-fixed')) $('#mainNav').addClass('is-fixed');
				}
				this.previousTop = currentTop;
			});
	}
	
	
});