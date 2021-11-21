build: clean ../main.yaml

../main.yaml:
	kustomize build >$@

clean/main.yaml:
	curl -sSL https://raw.githubusercontent.com/argoproj/argo-cd/v2.1.6/manifests/install.yaml >$@

.PHONY: clean
clean:
	rm -f clean/main.yaml ../main.yaml
