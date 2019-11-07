# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NextrollEngineer < Formula
  desc "Basic tools used by Nextroll's engineers"
  homepage ""
  url "https://adroll.atlassian.net/wiki/download/attachments/10616854/Hologram-1.1-120-g74d0504.pkg?version=1&modificationDate=1476127001680&cacheVersion=1&api=v2"
  version "0.1"
  sha256 ""

  # depends_on "cmake" => :build
  # depends_on "java" #formulas cannot depend on casks
  depends_on "tmux"
  depends_on "terraform"
  # depends_on "intellij-idea"
  # depends_on "pycharm"
  puts "This is checkpoint alpha"
  

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    puts "This is checkpoint bravo"

    exec "/usr/local/bin/brew", "cask", "install", "java"
    exec "/usr/local/bin/brew", "cask", "install", "intellij-idea"
    exec "/usr/local/bin/brew", "cask", "install", "pycharm"
    exec "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    puts "This is checkpoint ZULU"
  end

  puts "This is checkpoint delta"

  test do
    puts "This is checkpoint foxtrot "
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nextroll-engineer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
  puts "This is checkpoint echo"
end