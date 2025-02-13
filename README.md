kubectl port-forward svc/argocd-server -n argocd 8080:443
admin
rEsNYsFwPk43A5z-
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
