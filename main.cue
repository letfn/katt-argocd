package boot

import (
	"github.com/defn/boot"
)

repo: boot.#Repo & {
	version:           "2.1.6"
	upstream_manifest: "https://raw.githubusercontent.com/argoproj/argo-cd/v\(version)/manifests/install.yaml"
}
