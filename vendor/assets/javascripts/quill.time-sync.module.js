// Implement and register module
Quill.registerModule('timeSync', function(quill, options) {

  // var container = document.querySelector('#counter');

  quill.on('text-change', function() {
    var text = quill.getText();
    // There are a couple issues with counting words
    // this way but we'll fix these later
    console.log("timeSync",text);
  });
});