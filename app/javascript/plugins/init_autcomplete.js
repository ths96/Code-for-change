import places from 'places.js';

const initAutocomplete = () => {
  const addressInputs = document.querySelectorAll('.location_input');
  if (addressInputs) {
    addressInputs.forEach((input)=>{
      places({ container: input });
    })
  }
};

export { initAutocomplete };
