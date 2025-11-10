# create configmap with command line
kubectl create configmap app-config-dev \
 --from-literal=APPMODE=development \
 --from-literal=DB_HOST=mysql-service \
 --from-literal=DB_PORT=3306


# list configmap with yaml
kubectl get configmap <name-configmap> -o yaml
kubectl get configmap app-config-dev -o yaml # example


# create confirm map using file
kubectl create configmap app-config --from-file=app.properties
#output
# apiVersion: v1
# kind: ConfigMap
# metadata:
#   name: app-config
# data:
#   app.properties: |
#     APP_MODE=production
#     DB_HOST=mysql-service
#     DB_PORT=3306
kubectl 