require "language/node"

class VscodeJsonLanguageservice < Formula
  desc "Language service for JSON"
  homepage "https://github.com/Microsoft/vscode-json-languageservice#readme"
  url "https://registry.npmjs.org/vscode-json-languageservice/-/vscode-json-languageservice-5.1.1.tgz"
  sha256 "a02ecd0cee0931b878db7f39f3b8115766be03ddf2d27b1bc0acbc1c56c1c543"
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
