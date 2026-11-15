package normalize

import "github.com/mkusaka/gtok/internal/normalize/actions"

func KnownActionPattern(glob string) bool { return actions.KnownPattern(glob) }
