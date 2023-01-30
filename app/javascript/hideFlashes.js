document.addEventListener("DOMContentLoaded", function() {
	const alert = document.querySelector('.alert');
	if (alert){
		setTimeout(function(){
			alert.style.display = "none";
		}, 5000);
	};
});
