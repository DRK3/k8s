# [resolver](https://github.com/trustbloc/did-resolver/tree/main/cmd/did-rest) k8s deployment #


## pre-requisits
* [Minikube](https://minikube.sigs.k8s.io/docs/start/) with ingress addon.
* GNU sed
* (Optional: Gets installed by make) [kustomize](https://kubectl.docs.kubernetes.io/installation/kustomize/).

## Quick Run
* `make all`
* `make deploy-sandbox`

## Cleanup
* `make undeploy-sandbox`
* `make clean`

## options and features
* By default dns domain is `local.trustboc.dev`. To run with different domain (See next), run with: `make DOMAIN=ali.trustbloc.dev`
* Will create an Ingress for external access. When running with unregistered dns domains, create records (/etc/hosts) for:
	- `did-resolver.DOMAIN`
	- `uni-resolver-web.DOMAIN`
* Will deploy Sandbox resolver.
* if running `podman` pass `CONTAINER_CMD=podman` as option to make
* Running with none self-signed certificates: place certs into kustomize/resolver/overlays/sandbox/certs, then run with: `make setup-no-certs`.
>files:
	- ca.crt
	- tls.crt
	- tls.key
