class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.7.3/heatseeker-v1.7.3-universal-apple-darwin.tar.gz'
  sha256 'cb367c3248755e0a48a8186260d38dca5f523f6ff8c942c745c190bd50ca8f06'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
