// For more information see: http://emberjs.com/guides/routing/

Wikipages.Router.map(function() {
  this.resource('contacts', { path: '/' }, function() {
    this.resource('new_contact', { path: '/contacts/new' });
  });
  this.resource('contact', { path: '/contacts/:id' }, function() {
    this.resource('edit_contact', { path: '/contact/:id/edit' });
  });
});
