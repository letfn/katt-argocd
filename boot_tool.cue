package boot

import (
	"github.com/defn/boot"
)

arg1: string @tag(arg1)
arg2: string @tag(arg2)
arg3: string @tag(arg3)
arg4: string @tag(arg4)
arg5: string @tag(arg5)
arg6: string @tag(arg6)
arg7: string @tag(arg7)
arg8: string @tag(arg8)
arg9: string @tag(arg9)

command: boot.#Default.commands

command: bundle: _bundle.commands

_bundle: boot.#Bundle & {
	repo_name:         "katt-argocd"
	version:           "2.2.1"
	upstream_manifest: "https://raw.githubusercontent.com/argoproj/argo-cd/v\(version)/manifests/install.yaml"
}
