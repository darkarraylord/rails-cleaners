//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree .

 $(document).ready(function(){
    $('.datepicker').datepicker({format: "yyyy-mm-dd"});
  });
