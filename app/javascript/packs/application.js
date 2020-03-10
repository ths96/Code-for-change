require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start();
require("channels");

import "bootstrap";
import { initAutocomplete } from '../plugins/init_autcomplete';
import { initMapbox } from '../plugins/init_mapbox';
import Typewriter from 'typewriter-effect/dist/core';


document.addEventListener('turbolinks:load', () => {
  const tabs = document.querySelectorAll('.tab');
  const tabContents = document.querySelectorAll('.tab-pane');
  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      if (!event.currentTarget.classList.contains('active')) {
        tabs.forEach(tab => tab.classList.remove('active'));
        event.currentTarget.classList.add('active');
          tabContents.forEach((content) => {
            content.classList.toggle('d-none');
            content.classList.toggle('active');
          });
      }
    });
  });
  initMapbox();
  const target = document.getElementById('banner-description')

  if (target) {
    const typewriter = new Typewriter(target, {
      delay: 50
    })

    typewriter.typeString('Harness your skills while making a difference')
      .pauseFor(2500)
      // .deleteAll()
      .start()
  }
  initAutocomplete()
});




