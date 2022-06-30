class vaultKvSearch < Formula
  desc "vault-kv-search command line utiliy"
  homepage "https://github.com/xbglowx/vault-kv-search/releases"
  version "0.1.1"
  url "https://github.com/xbglowx/vault-kv-search/releases/download/v#{version}/vault-kv-search-#{version}.darwin-amd64.tar.gz"
  sha256 "b79c87377bcd62ce7ba40f481f86fb5ab09bd32129bd743963559d32e81e2fea"

  def install
    bin.mkpath
    prefix.install "vault-kv-search"
    mv "#{prefix}/vault-kv-search", "#{bin}/vault-kv-search"
  end

  test do
    system "script", "-q", "/dev/null", bin/"vault-kv-search"
  end
end
