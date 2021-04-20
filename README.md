# Weatherfor
[![Build & Tests](https://github.com/k41n3w/weatherfor_api/actions/workflows/ruby.yml/badge.svg)](https://github.com/k41n3w/weatherfor_api/actions/workflows/ruby.yml)

Api that's use weatherfor gem to check the average weather forecast for the next five days.

--> [Link da documentação no Heroku](https://weatherfor5.herokuapp.com/api-docs/index.html) <--

### After clone the project
To build locale type:

```bash
$ docker-compose build
```

To up the service type:
```bash
$ docker-compose up --build
```

To enter in the web container type:
```bash
$ docker exec -it weatherfor_api_web_1 bash
```

To run rubocop, inside the container type:
```bash
$ rubocop
```

To run Rspec, inside the container type:
```bash
$ rspec
```

To run Rswag locale, inside the container type:
```bash
$ rails rswag
```

If everything it's ok, after you startup the project you'll see the rswag documentation page at: http://0.0.0.0//api-docs/index.html