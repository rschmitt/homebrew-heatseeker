class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.6.0/heatseeker-v1.6.0-x86_64-apple-darwin.tar.gz'
  sha256 '8583e3347e9be490c0d57664b03867cf9d14c18819f17a4e84e8d9b52d029d8e'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
