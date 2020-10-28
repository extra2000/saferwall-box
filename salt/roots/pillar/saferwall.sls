saferwall:
  hostuser:
    name: vagrant
    group: vagrant
  version: 0.0.2
  service:
    ui:
      port:
        container: 80
        host: 8000
    backend:
      admin:
        user: admin
        password: abcde12345
        email: admin@example.com
      max_file_size: 100000000  # 100MB
      max_avatar_file_size: 10000000  # 10MB
      signkey: jwt_secret_auth_key
      port:
        container: 8080
        host: 8080
    nsq:
      version: v1.2.0
      port:
        tcp:
          container: 4150
          host: 4150
        http:
          container: 4151
          host: 4151
        https:
          container: 4152
          host: 4152
      nsqlookup:
        port:
          tcp:
            container: 4160
            host: 4160
          http:
            container: 4161
            host: 4161
      nsqadmin:
        port:
          container: 4171
          host: 4171
    minio:
      version: RELEASE.2020-10-18T21-54-12Z
      accesskey: minio
      seckey: minio123
      port:
        container: 9000
        host: 9000
    couchbase:
      version: community-6.5.1
      username: Administrator
      password: abcde12345
      port:
        rest_port:
          container: 8091
          host: 8091
        capi_port:
          container: 8092
          host: 8092
        query_port:
          container: 8093
          host: 8093
        fts_http_port:
          container: 8094
          host: 8094
        cbas_http_port:
          container: 8095
          host: 8095
        eventing_http_port:
          container: 8096
          host: 8096
        memcached_http_port:
          container: 11210
          host: 11210
    multiav:
      clamav:
        enabled: true
        port:
          container: 10004
          host: 10004
      comodo:
        enabled: true
        port:
          container: 10005
          host: 10005
      sophos:
        enabled: true
        url: https://www.dropbox.com/s/d9cx2wddeiqff59/sav-linux-free
        port:
          container: 10011
          host: 10011
      windefender:
        enabled: true
        version: 0.0.1
        port:
          container: 10014
          host: 10014
