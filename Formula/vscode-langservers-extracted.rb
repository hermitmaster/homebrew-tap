require "language/node"

class VscodeLangserversExtracted < Formula
  desc "HTML/CSS/JSON/ESLint language servers extracted from [vscode](https://github.com/Microsoft/vscode)"
  homepage "https://github.com/hrsh7th/vscode-langservers-extracted#readme"
  url "https://registry.npmjs.org/vscode-langservers-extracted/-/vscode-langservers-extracted-4.5.0.tgz"
  sha256 "5e3d3ddf64b4e339968e839f63935f3fd26064e34695e2feebbef1efcc413987"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
