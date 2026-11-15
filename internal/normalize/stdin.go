package normalize

import gitnormalize "github.com/mkusaka/gtok/internal/normalize/git"

func NeedsStdin(argv []string) (bool, string) { return gitnormalize.NeedsStdin(argv) }
