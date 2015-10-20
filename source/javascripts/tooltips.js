$(function () {
  $('[data-url]').each(function (index) {
    $(this).qtip({
      style: {
        classes: 'qtip-light'
      },
      content: {
        text: function(event, api) {
          $.ajax({
              url: $(this).data('url')
          })
          .then(function(content) {
              api.set('content.text', content);
          }, function(xhr, status, error) {
              api.set('content.text', status + ': ' + error);
          });
          return 'Loading...';
        }
      }
    });
  });
});
