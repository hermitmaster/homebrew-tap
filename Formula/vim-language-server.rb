require "language/node"

class VimLanguageServer < Formula
  desc "vim language server"
  homepage "https://github.com/iamcco/vim-language-server#readme"
  url "https://registry.npmjs.org/vim-language-server/-/vim-language-server-2.2.10.tgz"
  sha256 "ee09909846bc02880e240b3b5c682ef18235c97243ab24227034f2f27530a771"
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
