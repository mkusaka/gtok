// Package gtok embeds the documentation shipped with the binary.
package gtok

import "embed"

// Docs contains the version-matched user documentation and agent skill.
//
//go:embed README.md docs/*.md skills/gtok/SKILL.md
var Docs embed.FS
