const reloj = document.querySelector('.reloj')
function time() {
	const date = new Date()
	let hours = date.getUTCHours();
	let minutes = date.getUTCMinutes();
	let seconds = date.getUTCSeconds();
reloj.innerHTML = `${("0" + hours).slice(-2)}:${("0" + minutes).slice(-2)}:${("0" + seconds).slice(-2)}`
}
setInterval(time,1000);
