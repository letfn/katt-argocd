build: clean argocd.yaml

argocd.yaml: clean/argocd.yaml
	kustomize build clean >$@

clean/argocd.yaml:
	curl -sSL https://raw.githubusercontent.com/argoproj/argo-cd/v2.1.3/manifests/install.yaml >$@

.PHONY: clean
clean:
	rm -f clean/argocd.yaml
