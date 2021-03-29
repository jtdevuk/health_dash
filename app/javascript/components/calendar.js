const appointmentInfo = function() {
  appointments = document.querySelectorAll('.appointment-info').forEach(function(app){
    app.addEventListener('click', function(){
      alert('test');
    })
  })
}

export { appointmentInfo };