class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.8.0/heatseeker-v1.8.0-universal-apple-darwin.tar.gz'
  sha256 'ea04905b9281f2a8b43e99bf2ee684f52bc56cfb92bf7f6d27ebf119e40c58dd'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
