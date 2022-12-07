require "language/node"

class VscodeHtmlLanguageservice < Formula
  desc "Language service for HTML"
  homepage "https://github.com/Microsoft/vscode-html-languageservice#readme"
  url "https://registry.npmjs.org/vscode-html-languageservice/-/vscode-html-languageservice-5.0.2.tgz"
  sha256 "8ee44d5fb182e1a3fddbfe187f30d877810b8a0468085e7c33962a3dd42e6b70"
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
