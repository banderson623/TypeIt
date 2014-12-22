(function($){
  $(function(){
    var $editor = $('#quill-editor');
    var $form = $('.edit_document');
    var $field = $form.find('#document_content');
    if($editor.length){
      console.log("initializing things")
      var quill = new Quill('#' + $editor.attr('id'));
      quill.addModule('toolbar', { container: '#toolbar' });

      quill.on('text-change', function(delta, source) {
        $field.val(quill.getHTML());
        if (source == 'api') {
          console.log("An API call triggered this change.");
        } else if (source == 'user') {
          console.log("A user action triggered this change.", quill.getText());
        }
      });
    }
  });
})(jQuery);