build: clean argocd.yaml

argocd.yaml: clean/argocd.yaml
	kustomize build clean > argocd.yaml

clean/argocd.yaml:
	curl -o clean/argocd.yaml -sSL https://raw.githubusercontent.com/argoproj/argo-cd/v2.1.2/manifests/install.yaml

diff: argocd.yaml clean/argocd.yaml
	kustomize build . > diff.yaml
	diff argocd.yaml diff.yaml
	rm -f diff.yaml

.PHONY: clean
clean:
	rm -f clean/argocd.yaml
