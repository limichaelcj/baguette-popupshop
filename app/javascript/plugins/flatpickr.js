import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css"
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const today = new Date();
const year = today.getFullYear();
const month = today.getMonth();
const day = today.getDate();

const calendar = document.getElementById('datepicker');


if (calendar) {
  flatpickr(calendar, {
    altInput: true,
    defaultDate: "today",
    minDate: "today",
    maxDate: new Date(year, month + 1, day),
    disable: gon.booked_events,
    inline: true
  });
}
