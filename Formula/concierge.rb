class BrewPipNg < Formula
  include Language::Python::Shebang

  desc "Install pip packages as homebrew formulae"
  homepage "https://github.com/josegonzalez/brew-pip"
  version "a5ab3367cfbce48cd76f8d7bda0ddcb71aa97239"
  url "https://github.com/josegonzalez/brew-pip.git", 
    branch: "develop",
    revision: "a5ab3367cfbce48cd76f8d7bda0ddcb71aa97239"
  head "https://github.com/josegonzalez/brew-pip.git", branch: "develop"
  license "MIT"

  depends_on "python@3.11"

  def install
    bin.install "bin/brew-pip"
    rewrite_shebang detected_python_shebang, bin/"brew-pip"
  end

  test do
    system "#{bin}/brew-pip", "--help"
  end
end
