# Weatherfor
[![Build & Tests](https://github.com/k41n3w/weatherfor_api/actions/workflows/ruby.yml/badge.svg)](https://github.com/k41n3w/weatherfor_api/actions/workflows/ruby.yml)

Api that's use weatherfor gem to check the average weather forecast for the next five days and post to Twitter.

--> [Documentation Link to Heroku](https://weatherfor5.herokuapp.com/api-docs/index.html) <--

--> [Twitter Link](https://twitter.com/CaioRam51024555) <--

### After clone the project
To build localy, the command is:

```bash
$ docker-compose build
```

To up the service, the command is:
```bash
$ docker-compose up --build
```

To enter in the web container, the command is:
```bash
$ docker exec -it weatherfor_api_web_1 bash
```

To use the service regenerate credentials file.

To connect with Twitter API and codecov test badge,
you'll need to add the follow enviroment variables:

```bash
CONSUMER_KEY
CONSUMER_SECRET
ACCESS_TOKEN
ACCESS_TOKEN_SECRET
CODECOV_TOKEN
```

To run rubocop, inside the container, the command is:
```bash
$ rubocop
```

To run Rspec, inside the container, the command is:
```bash
$ rspec
```

To run Rswag locale, inside the container, the command is:
```bash
$ rails rswag
```

If everything's ok, after you startup the project you'll see the rswag documentation page at: http://0.0.0.0//api-docs/index.html
