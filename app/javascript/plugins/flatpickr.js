import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".date-time-picker", {enableTime: true, time_24hr: true, dateFormat: "d-m-Y H:i"});
  flatpickr(".date-picker", {dateFormat: "d-m-Y"});
}

export { initFlatpickr };