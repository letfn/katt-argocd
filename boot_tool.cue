package boot

import (
	"github.com/defn/boot"
)

command: boot.#Default.commands

command: bundle: _bundle.commands

_bundle: boot.#Bundle & {
	repo_name:         "katt-argocd"
	version:           "2.2.1"
	upstream_manifest: "https://raw.githubusercontent.com/argoproj/argo-cd/v\(version)/manifests/install.yaml"
}
