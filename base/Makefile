build: clean argocd.yaml

argocd.yaml: clean/argocd.yaml
	kustomize build clean > argocd.yaml

clean/argocd.yaml:
	curl -sSL https://raw.githubusercontent.com/argoproj/argo-cd/v2.1.2/manifests/install.yaml >$@
	#-helm repo add argo https://argoproj.github.io/argo-helm
	#helm repo update
	#helm template argocd argo/argo-cd --version 3.21.0 --namespace=argocd --values=values.yaml --include-crds --kube-version 1.21 >$@

.PHONY: clean
clean:
	rm -f clean/argocd.yaml
