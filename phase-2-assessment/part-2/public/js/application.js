$(document).ready(function() {
  $('form#post_form').on('submit', function(e) {
    e.preventDefault();
    $.ajax('/posts', {
      method: 'POST',
      data: $(this).serialize()
    }).done(function(data) {
      $('#posts').prepend(data);
    })
  })

  $('form.post_like').on('submit', function(event) {
    event.preventDefault();
    var id = $(event.target).attr('id')
    url = $(event.target).attr('action')
    $.ajax(url, {
      method: 'put',
      data: $(this).serialize()
    }).done(function(data) {
      console.log(data);
      $('#'+id+'_number').html(data)
    })
  })



  })
