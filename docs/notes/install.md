# Installation notes

Install an independent Git and the CGO-free gtok binary on Linux/macOS amd64/arm64.
Homebrew uses mkusaka/tap/gtok; mise uses github:mkusaka/gtok. Release archives
follow gtok_<version>_<os>_<arch>.tar.gz. The GitHub Action supports a version
input (vX.Y.Z or latest) and optional shim installation.

Download the intended release archive and matching checksum manifest into a new
directory. Verify SHA-256 before extraction; where available, verify the release
artifact attestation against this repository's release workflow. Checksums detect
corruption; provenance identifies a build, not whether its source is safe.
Do not execute an unreviewed download merely because verification succeeds.

Run `gtok shim install`, put that directory first on PATH, refresh the shell
command cache, then run doctor. Remove the owned shim before deleting/moving the
binary. Shell functions cover only configured shells; direct process launches
need the PATH shim or explicit gtok exec. See [README](../../README.md#install).
