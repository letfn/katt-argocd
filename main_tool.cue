package boot

import (
	"github.com/defn/boot"
	"tool/exec"
)

command: vendor: exec.Run & {
	cmd: "hof mod vendor cue"
}

command: gen: boot.#Command & {
	r: repo
}
