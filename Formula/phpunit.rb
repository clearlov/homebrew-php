require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Phpunit < AbstractPhpPhar
  init
  desc "Programmer-oriented testing framework for PHP"
  homepage "https://phpunit.de"
  url "https://phar.phpunit.de/phpunit-6.1.0.phar"
  sha256 "d3fec55272fbb35de6579abaa6292c02af57f04147011147e052ddd2223a8cea"

  bottle do
    cellar :any_skip_relocation
    sha256 "d299377f0a151cf89fa4816518f61bd65a4bafff0a10324090a52dead92e6b09" => :sierra
    sha256 "e57fe67f77843ce973e74d1f1490a08fce03f03a41658a5d67cdf2ea1ad4e908" => :el_capitan
    sha256 "e57fe67f77843ce973e74d1f1490a08fce03f03a41658a5d67cdf2ea1ad4e908" => :yosemite
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunit --version").include?(version)
  end
end
