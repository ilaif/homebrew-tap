class VeloctlAT040 < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/veloctl/v0.4.0/veloctl_0.4.0_Darwin_arm64.tar.gz"
      sha256 "31df5890ebe10d00f3cda756d03903129c80330848222fd17fa427829a19a276"

      def install
        bin.install "veloctl"
        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"
        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"
        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/veloctl/v0.4.0/veloctl_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "a8caa578f860e2fd5bdee91d582c41cdec9c98f9e34f4cc0d8048eb929985e0e"

      def install
        bin.install "veloctl"
        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"
        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"
        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/veloctl/v0.4.0/veloctl_0.4.0_Linux_arm64.tar.gz"
      sha256 "eecd1c1bfb7ed23f720e0f41853477ca7c7c1544bb3454a4dcde6ea80a15cd08"

      def install
        bin.install "veloctl"
        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"
        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"
        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/veloctl/v0.4.0/veloctl_0.4.0_Linux_x86_64.tar.gz"
      sha256 "0070afe7f2a3e8d551e08a78b2c940399689a6ecfb2777d759e1f9f77b5c4de8"

      def install
        bin.install "veloctl"
        system bin/"veloctl completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "veloctl"
        system bin/"veloctl completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_veloctl"
        system bin/"veloctl completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "veloctl.fish"
      end
    end
  end
  test do
    system "#{bin}/veloctl version"
  end
end
