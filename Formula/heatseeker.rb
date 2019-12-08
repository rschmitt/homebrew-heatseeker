class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.7.1/heatseeker-v1.7.1-x86_64-apple-darwin.tar.gz'
  sha256 '01a19d1e32b9501a2f0b81a4496e1efc524cccdcb0271e83b262120309723dd8'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
