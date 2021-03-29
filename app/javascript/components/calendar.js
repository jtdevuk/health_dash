const appointmentInfo = function() {
  const modalWindow = document.getElementById('calendar-modal');
  const appointments = document.querySelectorAll('.appointment-info').forEach(function(app){
    app.addEventListener('click', function() {
      modalWindow.classList.toggle('hidden');
    })
  })
}

export { appointmentInfo };