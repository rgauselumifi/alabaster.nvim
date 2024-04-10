local colors
if vim.o.background == "dark" then
	colors = {
		color1 = "#073642",
		color2 = "#268bd2",
		color3 = "#93a1a1",
		color4 = "#93a1a1",
		color5 = "#002b36",
		color6 = "#d33682",
	}
end

return {
	replace = {
		a = { fg = colors.color1, bg = colors.color2, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	inactive = {
		a = { fg = colors.color4, bg = colors.color1, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color1 },
		c = { fg = colors.color4, bg = colors.color1 },
	},
	normal = {
		a = { fg = colors.color3, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
		c = { fg = colors.color3, bg = colors.color1 },
	},
	visual = {
		a = { fg = colors.color1, bg = colors.color6, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	insert = {
		a = { fg = colors.color1, bg = colors.color3, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
}
