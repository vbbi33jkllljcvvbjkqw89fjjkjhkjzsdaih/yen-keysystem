--/ Key system settings. Provider "Static" checks Keys, provider "Http" asks your own server

return {
	Name = "Yen",
	Placeholder = "Key goes here",
	Remember = true,

	--/ The premium file is handed out by your license host, which already checks the key. Set true to show this key window there too
	KeyForPremium = false,

	--/ Seconds a key stays valid after it is entered. Then the hub locks and asks for it again
	Duration = 3600,

	GetKeyLink = "",
	DiscordLink = "https://discord.gg/kweW935CAf",
	TutorialLink = "",

	Provider = "Static",

	--/ Keys in a public repo are visible to everyone, use Http for real protection
	Keys = { "yen" },

	--/ The server must answer true or {"valid":true}. {Key} and {Hwid} are filled in for you
	Http = {
		Url = "https://example.com/validate?key={Key}&hwid={Hwid}",
	},
}
