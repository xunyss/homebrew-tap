class Jdkman < Formula
  include Language::Python::Virtualenv

  desc "A command-line tool for installing and managing JVM distributions, and switching Java environments."
  homepage "https://github.com/xunyss/jdkman"
  url "https://github.com/xunyss/jdkman/archive/refs/tags/v0.4.7.tar.gz"
  sha256 "1b732eeba676cb320b20d9edeb7ae3bbf04794628da00f8234604592fe00df93"
  license "MIT"

  bottle do
    root_url "https://github.com/xunyss/jdkman/releases/download/v0.4.7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "aba8c7d4dad98dab87c865ac927e05089044b5e529f407390dbfea206b6c7747"
  end

  depends_on "rust" => :build
  # depends_on "python@3.14"
  depends_on "python@3"

  resource "jdkman-whl" do
    url "https://files.pythonhosted.org/packages/e0/63/6fdb77eedfeef994af10ba47142ba71bcffc3a69a9c9d3829bbd7ae7ceba/jdkman-0.4.7-py3-none-any.whl",
        using: :nounzip
    sha256 "f77fbc53203244037faac2225b6d612a003b947ebdc847372a9cf4e386be41d0"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl",
        using: :nounzip
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl",
        using: :nounzip
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/68/687187c7e26cb24ccbd88e5069f5ef00eba804d36dde11d99aad0838ab45/charset_normalizer-3.4.6-py3-none-any.whl",
        using: :nounzip
    sha256 "947cf925bc916d90adba35a64c82aace04fa39b46b52d4630ece166655905a69"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl",
        using: :nounzip
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl",
        using: :nounzip
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl",
        using: :nounzip
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl",
        using: :nounzip
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl",
        using: :nounzip
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/1e/db/4254e3eabe8020b458f1a747140d32277ec7a271daf1d235b70dc0b4e6e3/requests-2.32.5-py3-none-any.whl",
        using: :nounzip
    sha256 "2462f94637a34fd532264295e186976db0f5d453d1cdd31473c85a6a161affb6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/14/25/b208c5683343959b670dc001595f2f3737e051da617f66c31f7c4fa93abc/rich-14.3.3-py3-none-any.whl",
        using: :nounzip
    sha256 "793431c1f8619afa7d3b52b2cdec859562b950ea0d4b6b505397612db8d5362d"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl",
        using: :nounzip
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/4a/91/48db081e7a63bb37284f9fbcefda7c44c277b18b0e13fbc36ea2335b71e6/typer-0.24.1-py3-none-any.whl",
        using: :nounzip
    sha256 "112c1f0ce578bfb4cab9ffdabc68f031416ebcc216536611ba21f04e9aa84c9e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl",
        using: :nounzip
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end

  def install
    system "cargo", "build", "--release", "--manifest-path", "hook/Cargo.toml"
    bin.install "hook/target/release/jdk-hook-env"

    venv = virtualenv_create(libexec, "python3")
    resources.each do |r|
      r.stage do
        whl = Pathname.pwd.glob("*.whl").first
        system libexec/"bin/python", "-m", "pip", "install", "--no-deps", whl
      end
    end
    bin.install_symlink libexec/"bin/jdk"
    zsh_script = Utils.safe_popen_read({"_JDK_COMPLETE" => "source_zsh"}, bin/"jdk").lstrip
    zsh_script = zsh_script.sub("compdef _jdk_completion jdk", <<~'ZSH'.chomp)
      if [ "$funcstack[1]" = "_jdk" ]; then
          _jdk_completion "$@"
      else
          compdef _jdk_completion jdk
      fi
    ZSH
    (zsh_completion/"_jdk").write zsh_script
    (bash_completion/"jdk").write Utils.safe_popen_read({"_JDK_COMPLETE" => "source_bash"}, bin/"jdk")
    (fish_completion/"jdk.fish").write Utils.safe_popen_read({"_JDK_COMPLETE" => "source_fish"}, bin/"jdk")
  end

  test do
    assert_match "jdk", shell_output("#{bin}/jdk --help")
  end
end

