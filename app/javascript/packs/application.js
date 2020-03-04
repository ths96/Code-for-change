require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start();
require("channels");

import "bootstrap";

document.addEventListener('turbolinks:load', () => {
  const tabs = document.querySelectorAll('.tab');
  const tabContents = document.querySelectorAll('.tab-pane');
  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      tabs.forEach(tab => tab.classList.remove('active'));
      event.currentTarget.classList.add('active');
      tabContents.forEach((content) => {
        content.classList.toggle('d-none');
        content.classList.toggle('active');
      });
    });
  });
});

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
