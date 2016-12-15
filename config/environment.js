/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'ember-app',
    podModulePrefix: 'ember-app/pods',
    environment: environment,
    baseURL: '/',
    locationType: 'hash',
    contentSecurityPolicy: {
      'connect-src': "'self' api.citybik.es",
      'font-src': "'self' fonts.gstatic.com",
      'style-src': "'self' fonts.googleapis.com"
    },
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development') {
     ENV.APP.LOG_RESOLVER = false;
     ENV.APP.LOG_ACTIVE_GENERATION = false;
     ENV.APP.LOG_TRANSITIONS = false;
     ENV.APP.LOG_TRANSITIONS_INTERNAL = false;
     ENV.APP.LOG_VIEW_LOOKUPS = false;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.locationType = 'hash'
  }

  return ENV;
};
