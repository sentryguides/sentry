//= require_tree .
//= require "jquery"
//= require "bootstrap"

var index;
var map;

function loadIndex(){
  return $.getJSON('/search.json').done(function(data){
    index = lunr.Index.load(data.index);
    map = data.map
  });
}

$(function () {
  $('[data-toggle="tooltip"]').tooltip();


  var $form = $('form[role=search]');
  var $input = $('form[role=search] input[type=text]');

  $input.popover({
    content: '',
    container: $form[0],
    placement: 'bottom',
    html: true
  });

  $form.on('keyup submit', function () {
    if(!index) loadIndex().done(queryIndex);
    else queryIndex();

    function queryIndex() {
      var html = '<ul class="list-group">';
      index.search($input.val()).forEach(function(res) {
        html += '<a href="' + res.ref +'"><li class="list-group-item">' + map[res.ref].title + '</li></a>';
      });
      if(html == '<ul class="list-group">') {
        html += '<li class="list-group-item">No results found :(</li>';
      }
      html += '</ul>';
      $input.data('bs.popover').options.content = html;
      $input.popover('show');
    }
  });

  $input.on('focus', function () {
    $input.popover('show');
  });

  $input.on('blur', function () {
    $input.popover('hide');
  });

});
