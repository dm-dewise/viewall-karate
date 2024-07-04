function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    apiURL: 'https://api-pagsubok.viewall.dk/',
    keycloakURL: 'https://dev-iam-viewall.westeurope.cloudapp.azure.com/realms/ViewAll/protocol/openid-connect/token'
  }
  if (env == 'dev') {
    
  }

  var accessToken = karate.callSingle('classpath:helpers/GetToken.feature', config).authToken
  karate.configure('headers', { Authorization: 'Bearer ' + accessToken });

  return config;
}