class BrewPipNg < Formula
  include Language::Python::Shebang

  desc "Install pip packages as homebrew formulae"
  homepage "https://github.com/josegonzalez/brew-pip"
  url "https://github.com/josegonzalez/brew-pip.git", branch: "develop"
  license "MIT"

  # Repository is not maintained in 9+ years
  deprecate! date: "2022-04-16", because: :unmaintained

  depends_on "python@3.11"

  def install
    bin.install "bin/brew-pip"
    rewrite_shebang detected_python_shebang, bin/"brew-pip"
  end

  test do
    system "#{bin}/brew-pip", "--help"
  end
end
