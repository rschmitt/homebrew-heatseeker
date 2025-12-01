class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.10.0/heatseeker-v1.10.0-universal-apple-darwin.tar.gz'
  sha256 'f1b0fd1fe249feed06be8669b179f121b8570ca70d6cfb6711e5fe70da56c278'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
