require "language/node"

class VscodeCssLanguageservice < Formula
  desc "Language service for CSS, LESS and SCSS"
  homepage "https://github.com/Microsoft/vscode-css-languageservice#readme"
  url "https://registry.npmjs.org/vscode-css-languageservice/-/vscode-css-languageservice-6.1.1.tgz"
  sha256 "0ee77d27cdbfc6773a9cd202df3e804c2f32f75bc1da968fd58bf678e5ad986b"
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
