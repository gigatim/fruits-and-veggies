# FoodUmbrella

This is an example application to use with [Gigalixir](https://gigalixir.com).

food_umbralla is an umbrella project which contains these applications:
* `proxy` - the server endpoint which proxies requests to the other apps
* `fruits` - a simple Phoenix app that serves a list of fruits
* `veggies` - a simple Phoenix app that serves a list of vegetables

The `proxy` app is utilizing the [main_proxy](https://hex.pm/packages/main_proxy) library to proxy requests to the other apps.
The proxy definitions are configured in the `apps/proxy/lib/proxy/proxy.ex` file.

In this example, we have deployed to [Gigalixir](https://gigalixir.com/) with two custom domains:
* `fruits.gigalixir.com`
* `veggies.gigalixir.com`

Requests to `fruits.gigalixir.com` are proxied to the `fruits` app and requests to `veggies.gigalixir.com` are proxied to the `veggies` app.

Currently each app has one endpoint `/api/` which returns a list of fruits or vegetables respectively.
```bash
> curl http://fruits.gigalixir.com/api/
{"fruits":["apple","banana","cherry"]}

> curl http://veggies.gigalixir.com/api/
{"veggies":["carrot","broccoli","spinach"]}
```
