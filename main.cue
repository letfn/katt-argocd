package boot

import "github.com/defn/boot"

cfg: repo: boot.#Repo & {
	repo_name:         "katt-argocd"
	version:           "2.2.1"
	upstream_manifest: "https://raw.githubusercontent.com/argoproj/argo-cd/v\(version)/manifests/install.yaml"
}
