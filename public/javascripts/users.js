(function($) {
  var app = $.sammy(function() {
    this.use(Sammy.Template);
    this.element_selector = '#main';
    this.get('#/', function(context) {
      $.ajax({
        url: '/users.json'
      , dataType: 'json'
      , success: function(users) {
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
  });

  $(function() {
    app.run("#/");
  });
})(jQuery);
