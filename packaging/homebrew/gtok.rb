class Gtok < Formula
  desc "Transparent Git wrapper with pre/post hooks and operation normalization"
  homepage "https://github.com/mkusaka/gtok"
  version "__VERSION__"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "__DARWIN_ARM64_URL__"
      sha256 "__DARWIN_ARM64_SHA256__"
    else
      url "__DARWIN_X64_URL__"
      sha256 "__DARWIN_X64_SHA256__"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "__LINUX_ARM64_URL__"
      sha256 "__LINUX_ARM64_SHA256__"
    else
      url "__LINUX_X64_URL__"
      sha256 "__LINUX_X64_SHA256__"
    end
  end

  def install
    bin.install "gtok"
  end

  def caveats
    <<~EOS
      gtok is installed but not active. Route `git` through it in one of two ways:
        gtok shim install                   # every git on this machine, incl. scripts and agents
        eval "$(gtok shell-init zsh)"        # only git typed in your shell (bash/fish also supported)
      The shim creates ~/.local/bin/git -> #{opt_bin}/gtok (shell rc files are not modified);
      put ~/.local/bin before #{HOMEBREW_PREFIX}/bin in PATH. Undo with `gtok shim uninstall`.
      Without a config git passes through untouched; create one with:
        gtok config init --scope user
      Then check everything with `gtok doctor`.
      Docs ship with the binary (offline): `gtok docs`, `gtok docs search "<query>"`, `gtok actions`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtok version")
  end
end
