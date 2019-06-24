---
title: API Reference

language_tabs:
- bash
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://localhost/docs/collection.json)

<!-- END_INFO -->

#general
<!-- START_c3fa189a6c95ca36ad6ac4791a873d23 -->
## login api
provide email &amp; password to login

> Example request:

```bash
curl -X POST "/api/login" 
```

```javascript
const url = new URL("/api/login");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/login`


<!-- END_c3fa189a6c95ca36ad6ac4791a873d23 -->

<!-- START_f04d93babd391053595aa79f4bcc5211 -->
## Register api
Provide name, unique email, password, confirm password

> Example request:

```bash
curl -X POST "/api/registration" 
```

```javascript
const url = new URL("/api/registration");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/registration`


<!-- END_f04d93babd391053595aa79f4bcc5211 -->

<!-- START_2b349f7f0ce1ce2ae13b3d385ae6e476 -->
## Show all the transactions of login user

> Example request:

```bash
curl -X GET -G "/api/home" 
```

```javascript
const url = new URL("/api/home");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```

### HTTP Request
`GET api/home`


<!-- END_2b349f7f0ce1ce2ae13b3d385ae6e476 -->

<!-- START_d2491118066392c40978d2c798800d97 -->
## Get individual transaction based on transaction ID

> Example request:

```bash
curl -X GET -G "/api/home/1" 
```

```javascript
const url = new URL("/api/home/1");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```

### HTTP Request
`GET api/home/{id}`


<!-- END_d2491118066392c40978d2c798800d97 -->

<!-- START_1569d2a0765174c34152d2f116e3da45 -->
## Search or filter transaction based on start date or/and end date

> Example request:

```bash
curl -X GET -G "/api/search-transactions" 
```

```javascript
const url = new URL("/api/search-transactions");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```

### HTTP Request
`GET api/search-transactions`


<!-- END_1569d2a0765174c34152d2f116e3da45 -->

<!-- START_cb859c8e84c35d7133b6a6c8eac253f8 -->
## Show the application dashboard.

> Example request:

```bash
curl -X GET -G "/home" 
```

```javascript
const url = new URL("/home");

let headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
}

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (401):

```json
{
    "message": "Unauthenticated."
}
```

### HTTP Request
`GET home`


<!-- END_cb859c8e84c35d7133b6a6c8eac253f8 -->


