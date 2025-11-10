# add multiple file 
kubectl create configmap my-configmap-file --from-file=foo.json \
--from-file=db.conf \
--from-file=cache.conf \
--from-file=app.properties \

# output is 
# apiVersion: v1
# data:
#   app.properties: |
#     APP_MODE=production
#   cache.conf: |
#     REDIS_HOST=redis-service
#     REDIS_PORT=6379
#   db.conf: |
#     DB_HOST=mysql-service
#     DB_PORT=3306
#   foo.json: |
#     { "featureFlag": true }
# kind: ConfigMap
# metadata:
#   creationTimestamp: "2025-11-10T13:14:47Z"
#   name: my-configmap-file
#   namespace: default
#   resourceVersion: "129790"
#   uid: 0373169e-b401-49e1-8ed5-3dab89a64556