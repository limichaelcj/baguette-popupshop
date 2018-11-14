import swal from 'sweetalert';

function bindSweetAlertButton() {
  const swalButton = document.getElementById('sweet-alert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      const venue = document.getElementById('venueName').innerHTML;
      swal(`Confirm booking for ${venue}?`, {
        buttons: ["Cancel", true]
      }).then((confirm) => {
        if (confirm) {
          swal({
            title: "Booking confirmed!",
            icon: "success"
          });
        }
      })
    });
  }
}

bindSweetAlertButton();
