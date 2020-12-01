# Saferwall API with cURL

This Chapter shall demonstrate how to playaround with Saferwall API using cURL.

`SSH` into the `saferwall-box`
```
$ vagrant ssh saferwall-box
```

Install `jq` package:
```
$ sudo dnf install -y jq
```

Simple HTTP test:
```
$ TOKEN=$(curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username": "admin", "password": "abcde12345"}' http://saferwall-box:8080/v1/auth/login | jq -r '.token')
$ curl -X PUT -H 'Accept: application/json' -H 'Content-Type: application/json' --cookie "JWTCookie=${TOKEN}" --data '{"bio": "hello"}' http://saferwall-box:8080/v1/users/admin
```

Simple HTTPS test:
```
$ TOKEN=$(curl --insecure -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username": "admin", "password": "abcde12345"}' https://saferwall-box/v1/auth/login | jq -r '.token')
$ curl --insecure -X PUT -H 'Accept: application/json' -H 'Content-Type: application/json' --cookie "JWTCookie=${TOKEN}" --data '{"bio": "hello world"}' https://saferwall-box/v1/users/admin
```
