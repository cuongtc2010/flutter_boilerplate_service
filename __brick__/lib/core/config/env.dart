enum Environment { Dev, Prod }

class Env {
  static Map<String, dynamic>? _env;

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.Dev:
        _env = _EnvMap.devEnv;
        break;
      case Environment.Prod:
        _env = _EnvMap.prodEnv;
        break;
    }
  }

  static bool isDev() => _env == _EnvMap.devEnv;

  static bool isProd() => _env == _EnvMap.prodEnv;

  static get envName {
    return _env?[_EnvMap.ENV_NAME];
  }

  static String? get baseUrl {
    return _env?[_EnvMap.BASE_URL];
  }
}

class _EnvMap {
  static const ENV_NAME = 'ENV_NAME';
  static const BASE_URL = 'BASE_URL';
  static const API_KEY = 'API_KEY';

  static const Map<String, String> devEnv = {
    ENV_NAME: 'Dev',
    BASE_URL: 'https://api.themoviedb.org/3',
    API_KEY: "DEV_API_KEY",
  };

  static const Map<String, String> prodEnv = {
    ENV_NAME: 'Prod',
    BASE_URL: 'https://api.themoviedb.org/3',
    API_KEY: "PROD_API_KEY",
  };
}
