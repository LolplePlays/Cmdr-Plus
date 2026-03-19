-- added kick reason from github.com/evaera/Cmdr/pull/357

return {
	Name = "kick",
	Aliases = { "boot" },
	Description = "Kicks a player or set of players.",
	Group = "DefaultAdmin",
	Args = {
		{
			Type = "players",
			Name = "players",
			Description = "The players to kick.",
		},
		{
			Type = "string",
			Name = "reason",
			Description = "The reason to kick the players.",
			Optional = true,
		},
	},
}
