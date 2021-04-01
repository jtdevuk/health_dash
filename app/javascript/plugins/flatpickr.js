import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".date-time-picker", {enableTime: true});
  flatpickr(".date-picker", {});
}

export { initFlatpickr };