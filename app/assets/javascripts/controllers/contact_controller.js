Wikipages.ContactController = Ember.ObjectController.extend({
  actions: {
    deleteContact: function() {
      if (confirm('Are you sure you want to delete the contacyē?')) {
        this.get('model').destroyRecord();
      }
    }
  }
});
