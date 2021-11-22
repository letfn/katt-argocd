package boot

import (
	"github.com/defn/boot"
)

command: gen: boot.#Command & {
	rname: "katt-argocd"
	r:     repo
}
