import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".date-time-picker", {enableTime: true, dateFormat: "d-m-Y"});
  flatpickr(".date-picker", {dateFormat: "d-m-Y"});
}

export { initFlatpickr };