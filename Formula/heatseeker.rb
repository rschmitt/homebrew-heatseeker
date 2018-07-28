class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.5.2/heatseeker-v1.5.2-x86_64-apple-darwin.tar.gz'
  sha256 'ae61d08b5d03cc4b04b899fcdbd41b1e03c287a8d1669f7b6bc5821313ecc19a'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
