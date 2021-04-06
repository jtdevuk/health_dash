import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".date-time-picker", {enableTime: true});
}

export { initFlatpickr };