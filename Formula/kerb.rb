class Kerb < Formula
  desc "Stops AI coding agents from wasting turns on blocked actions and retries that can't help"
  homepage "https://github.com/eeshwarantharan/kerb"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eeshwarantharan/kerb/releases/download/v0.1.0/kerb-darwin-arm64"
      sha256 "313df2355be5dfee2309ad535383f57da1d7458b9f0aaaa9d53025e5ff216e91"
    end
    on_intel do
      url "https://github.com/eeshwarantharan/kerb/releases/download/v0.1.0/kerb-darwin-x64"
      sha256 "4a8c7e130d5cd8a2a35d3e533475ca9c470f97c9098f5f18d5fc79cf09b97e5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eeshwarantharan/kerb/releases/download/v0.1.0/kerb-linux-arm64"
      sha256 "76a17c716763b2b84f7dc1906ad4fd50c2251d6370867afade9d895ac07f4379"
    end
    on_intel do
      url "https://github.com/eeshwarantharan/kerb/releases/download/v0.1.0/kerb-linux-x64"
      sha256 "47f2bb0d927ffaad763105fb5ae92a2caee61bd0b7a441c29b66fa332bfd631c"
    end
  end

  def install
    bin.install Dir["kerb-*"].first => "kerb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kerb --version")
    system bin/"kerb", "doctor"
  end
end
