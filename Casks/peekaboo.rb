cask "peekaboo" do
    version "2024.1.8.0"
    sha256 "79ee874c0e62544c20038f6eb701228d31f78f13cf8dafff93a95f727161b54d"

    url "https://github.com/apstygo/Peekaboo/releases/download/#{version}/Peekaboo.app.zip"
    name "Peekaboo"
    desc "An app that helps you find your cursor."
    homepage "https://github.com/apstygo/Peekaboo"

    livecheck do
        url :url
        strategy :github_latest
    end

    depends_on macos: ">= :mojave"

    app "Peekaboo.app"

    uninstall quit: "com.apstygo.Peekaboo"

    zap login_item: "Peekaboo", 
        trash: [
        "~/Library/Containers/com.apstygo.Peekaboo",
        "~/Library/Preferences/com.apstygo.Peekaboo.plist",
    ]
end
  