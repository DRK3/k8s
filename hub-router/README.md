# [Hub Router](https://github.com/trustbloc/hub-router) k8s deployment #


## pre-requisits
* [Minikube](https://minikube.sigs.k8s.io/docs/start/) with ingress addon.
* GNU sed
* (Optional: Gets installed by make) [kustomize](https://kubectl.docs.kubernetes.io/installation/kustomize/).

## Quick Run
* `make all`
* `make deploy-hub-router`

## Cleanup
* `make undeploy-hub-router`
* `make clean`

## options and features
* By default dns domain is `local.trustboc.dev`. To run with different domain (See next), run with: `make DOMAIN=ali.trustbloc.dev`
* By default Bloc domain is `orb-1.trustboc.dev`. To run with different domain (See next), run with: `make BLOC_DOMAIN=orb-1.ali.trustbloc.dev`
* Will create an Ingress for external access. When running with unregistered dns domains, create records (/etc/hosts) for:
	- `router.DOMAIN`
	- `router-ws.DOMAIN`
	- `router-api.DOMAIN`
* if running `podman` pass `CONTAINER_CMD=podman` as option to make
* Running with none self-signed certificates: place certs into kustomize/wallet/overlays/sandbox/certs, then run with: `make setup-no-certs`.
>files:
	- ca.crt
	- tls.crt
	- tls.key
