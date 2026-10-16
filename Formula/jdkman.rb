class Jdkman < Formula
  include Language::Python::Virtualenv

  desc "A command-line tool for installing and managing JVM distributions, and switching Java environments."
  homepage "https://github.com/xunyss/jdkman"
  url "https://github.com/xunyss/jdkman/archive/refs/tags/v0.6.8.tar.gz"
  sha256 "e5f99fdfe8d900550f0cd797eea09b9989f8be40f21f20c222138f1491bf65c0"
  license "MIT"

  bottle do
    root_url "https://github.com/xunyss/jdkman/releases/download/v0.6.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "b8b98630399162d44257870b627ae36c14ad5f9eccb857e206122157d429c434"
  end

  depends_on "rust" => :build
  # depends_on "python@3"
  depends_on "python@3.14"

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/83/b8/9ebb531b6c2d377af08ac6746a5df3425b21853a5d2260876919b58a2a4a/typer-0.24.2.tar.gz"
    sha256 "ec070dcfca1408e85ee203c6365001e818c3b7fffe686fd07ff2d68095ca0480"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  def install
    system "cargo", "build", "--release", "--manifest-path", "hook/Cargo.toml"
    bin.install "hook/target/release/jdk-hook-env"

    virtualenv_install_with_resources

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

