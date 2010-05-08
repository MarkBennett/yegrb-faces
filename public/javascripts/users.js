(function($) {
  var app = $.sammy(function() {
    this.use(Sammy.Template);
    this.element_selector = '#main';
    this.get('#/', function(context) {
      context.$element().html('');
      $.ajax({
        url: '/users.json'
      , dataType: 'json'
      , success: function(users) {
          context.users = users;
          $.each(users, function(i, user) {
            context.partial('templates/face.template'
            , { "user": user }
            , function(rendered) {
                context.$element().append(rendered);
              }
            );
          });
        }
      });
    });
    this.get("#/users/:id", function(context) {
      $.ajax({
        url: '/users/' + this.params['id'] + '.json'
      , dataType: 'json'
      , success: function(user) {
          context.partial('templates/user_details.template', { "user": user }, function(rendered) {
            context.$element().html(rendered);
          });
        }
      })
    });
  });

  $(function() {
    app.run("#/");
  });
})(jQuery);
