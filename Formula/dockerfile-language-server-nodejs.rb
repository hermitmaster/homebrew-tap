require "language/node"

class DockerfileLanguageServerNodejs < Formula
  desc "A language server for Dockerfiles powered by NodeJS, TypeScript, and VSCode technologies"
  homepage "https://github.com/rcjsuen/dockerfile-language-server-nodejs#readme"
  url "https://registry.npmjs.org/dockerfile-language-server-nodejs/-/dockerfile-language-server-nodejs-0.9.0.tgz"
  sha256 "88a6085ca049ebdf383f3644ee699e982379e3767918bf14baedd0ef90c1e18f"
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
