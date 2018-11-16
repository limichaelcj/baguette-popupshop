import swal from 'sweetalert';

function bindSweetAlertButton() {
  const swalButton = document.getElementById('sweet-alert');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      const venue = document.getElementById('venueName').innerHTML;
      const inputDate = document.getElementById('datepicker').value;
      const date = new Date(inputDate);
      const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
      const content = document.createElement('div');
      content.class = "swal-content";
      content.innerHTML = `
        <br>
        <h5>Pop-Up Shop @ ${gon.venue_name}</h5>
        <br>
        <div class="swal-text">
          <p>${date.toLocaleDateString("en-US", options)}</p>
          <p>${gon.venue_address}</p>
          <p>Total: ¥${gon.venue_price}</p>
        </div>
        <br>`;
      swal({
        title: `Confirm event booking`,
        content: content,
        icon: "info",
        buttons: ["Cancel", true]
      }).then((confirm) => {
        if (confirm) {
          const submitter = document.getElementById('calendar-form-node');
          submitter.submit();
        }
      })
    });
  }
}

bindSweetAlertButton();
