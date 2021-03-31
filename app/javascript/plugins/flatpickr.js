import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {enableTime: true});
  flatpickr(".date-only", {});
}

export { initFlatpickr };