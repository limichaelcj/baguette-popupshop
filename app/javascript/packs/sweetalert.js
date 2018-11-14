import swal from 'sweetalert';

function bindSweetAlertButton() {
  const swalButton = document.getElementById('sweet-alert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Booking confirmed!",
        text: `Popup event booked at Boom Cafe.`,
        icon: "success"
      });
    });
  }
}

bindSweetAlertButton();
