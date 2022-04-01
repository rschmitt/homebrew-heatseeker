class Heatseeker < Formula
  desc 'A high-performance general purpose fuzzy finder, based on selecta'
  homepage 'https://github.com/rschmitt/heatseeker'
  url 'https://github.com/rschmitt/heatseeker/releases/download/v1.7.2/heatseeker-v1.7.2-x86_64-apple-darwin.tar.gz'
  sha256 '0f549a399dcf66a6f4b901dbc5ef9128a6aa816d1fd3dba90ca1513c71d7e3d1'

  def install
    bin.install 'hs'
  end

  test do
    system *%W(#{bin}/hs -v)
    assert_equal "cc\n", `echo 'aa\\nbb\\ncc\\n' | #{bin}/hs -s c -f`
  end
end
