build: clean argocd.yaml

argocd.yaml: clean/argocd.yaml
	kustomize build clean > argocd.yaml

clean/argocd.yaml:
	-helm repo add argo https://argoproj.github.io/argo-helm
	helm repo update
	helm template argowf argo/argo-cd --version 3.21.0 --namespace=argocd --values=values.yaml --kube-version 1.21 >$@

.PHONY: clean
clean:
	rm -f clean/argocd.yaml
