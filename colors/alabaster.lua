vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
	-- colors
	local bg = "#002b36"
	local fg = "#839496"
	local punct_fg = "#657b83"
	local def_fg = "#268bd2"
	local const_fg = "#d33682"
	local active = "#b58900"
	local string_fg = "#859900"
	local darker_fg = "#657b83"
	local diffadd = "#859900"
	local diffdelete = "#dc322f"
	local diffchange = "#b58900"
	local statusline = "#93a1a1"
	local comment = "#b58900"
	local dim_comment = "#696969"
	local mistake = {
		fg = "#dc322f",
		bg = "#002b36",
	}
	local error = "#dc322f"
	local warn = "#b58900"
	local hint = "#859900"
	local info = "#268bd2"
	local ansi = {
		black = "#002b36",
		blue = "#268bd2",
		brightyellow = "#b58900",
		cyan = "#2aa198",
		green = "#859900",
		magenta = "#d33682",
		red = "#dc322f",
		white = "#839496",
		yellow = "#b58900",
	}
	local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
	local pmenu_bg = "#073642"
	local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
	local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#002b36" }
		or {
			bg = float_bg,
			fg = float_bg,
		}
	theme = {
		Comment = { fg = comment_fg },
		ColorColumn = { bg = "#E2EEEE" },
		Conceal = { fg = "#b0b0b0" },
		Cursor = { bg = active, fg = "#000000" },
		-- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = "#073642" },
		CursorLine = { bg = "#073642" },
		Directory = { fg = ansi.blue },
		DiffAdd = { bg = "#244032", fg = "#56d364" },
		DiffDelete = { bg = "#462c32", fg = "#f85149" },
		DiffText = { fg = "#341a00", bg = "#fff987" },
		DiffChange = { bg = "#341a00", fg = "#e3b341" },
		EndOfBuffer = { fg = "#354c50" },
		-- TermCursor   { }, -- cursor in a focused terminal
		TermCursorNC = { fg = bg, bg = fg },
		ErrorMsg = { fg = error, bg = mistake.bg },
		VertSplit = { fg = "#2b3d40" },
		Folded = { bg = "#073642", fg = "#7d7d7d" },
		FoldColumn = { bg = bg, fg = "#4d4d4d" },
		SignColumn = {},
		IncSearch = { bg = ansi.yellow, fg = bg },
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr = { fg = "#5c5c5c" },
		CursorLineNr = { fg = ansi.blue, bold = 1 },
		MatchParen = { underline = 1, sp = active },
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = ansi.green, bold = 1 },
		NonText = { fg = "#696969" },
		Normal = { bg = bg, fg = fg },
		NormalFloat = { bg = float_bg },
		-- NormalNC     { }, -- normal text in non-current windows
		FloatBorder = floatborder,
		Pmenu = { bg = pmenu_bg },
		PmenuSel = { bg = "#354c50" },
		PmenuSbar = { bg = "#212f31" },
		PmenuThumb = { bg = "#47666b" },
		Question = { fg = diffadd },
		QuickFixLine = { bg = "#073642" },
		Search = { bg = "#354c50" },
		SpecialKey = { fg = ansi.cyan },
		SpellBad = { undercurl = 1, sp = ansi.red },
		SpellCap = { undercurl = 1, sp = ansi.blue },
		SpellLocal = { undercurl = 1, sp = ansi.cyan },
		SpellRare = { undercurl = 1, sp = ansi.magenta },
		StatusLine = { bg = statusline, fg = fg },
		StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
		TabLine = { bg = statusline, fg = "#7d7d7d" },
		TabLineFill = { bg = statusline },
		TabLineSel = { bg = statusline, fg = ansi.blue },
		Title = { fg = const_fg },
		Visual = { bg = "#293334" },
		VisualNOS = { bg = "#293334" },
		WarningMsg = { fg = "#e1ad4c" },
		WildMenu = { bg = "#354c50" },
		WinBar = { bg = bg, fg = ansi.white, bold = true },
		WinBarNC = { bg = bg, fg = "#7d7d7d" },

		--- SYNTAX I: TS groups link to these
		Constant = { fg = const_fg },
		String = { fg = string_fg },
		Character = { fg = const_fg },
		Number = { fg = const_fg },
		Boolean = { fg = const_fg },
		Float = { fg = const_fg },
		Operator = { fg = punct_fg },

		--- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
		Identifier = { fg = ansi.white },
		Function = { fg = def_fg },
		Statement = { fg = ansi.white },
		Conditional = { fg = ansi.white },
		Repeat = { fg = ansi.white },
		Label = { fg = def_fg },
		Keyword = { fg = ansi.white },
		Exception = { fg = ansi.white },
		PreProc = { fg = ansi.white },
		Include = { fg = ansi.white },
		Define = { fg = ansi.white },
		Macro = { fg = ansi.white },
		PreCondit = { fg = ansi.white },
		Type = { fg = ansi.white },
		StorageClass = { fg = ansi.white },
		Structure = { fg = def_fg },
		Typedef = { fg = def_fg },

		Special = { fg = ansi.yellow },
		-- TODO better color than diffchange, try reddish
		-- SpecialChar = { fg = diffchange }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { },
		SpecialComment = { bg = "#1d292b", fg = ansi.blue },
		debugPc = { bg = "#0f2534" },
		debugBreakpoint = { bg = "#b33229" },
		helpHyperTextJump = { fg = ansi.magenta },
		helpSectionDelim = { fg = ansi.magenta },
		helpExample = { fg = ansi.cyan },
		helpCommand = { fg = ansi.cyan },
		helpHeadline = { fg = ansi.blue },
		helpHeader = { fg = ansi.magenta },

		Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
		Italic = { italic = 1 },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { bg = mistake.bg, fg = mistake.fg },

		Todo = { bg = "#d0d058", fg = bg },

		--- Diagnostic
		LspReferenceText = { bg = "#253437" },
		LspReferenceRead = { bg = "#253437" },
		LspReferenceWrite = { bg = "#253437", underline = 1, sp = active },
		LspCodeLens = { fg = "#5c5c5c" },
		LspCodeLensSeparator = { fg = "#5c5c5c" },

		--- Diagnostic
		DiagnosticError = { fg = error },
		DiagnosticWarn = { fg = warn },
		DiagnosticHint = { fg = hint },
		DiagnosticInfo = { fg = info },
		DiagnosticVirtualTextError = { bg = "#350B0B", fg = "#D1503A" },
		DiagnosticVirtualTextWarn = { bg = "#3F240A", fg = "#C8935D" },
		DiagnosticVirtualTextHint = { bg = "#1D2B37", fg = "#7E9CB9" },
		DiagnosticVirtualTextInfo = { bg = "#162C0B", fg = "#7BAC62" },

		--- Treesitter
		TSAttribute = {},
		TSConstructor = { fg = ansi.white },
		TSConditional = { fg = ansi.white },
		TSConstBuiltin = { fg = const_fg },
		TSConstMacro = { fg = ansi.white },
		TSError = { bg = mistake.bg, fg = mistake.fg },
		TSException = { fg = ansi.white },
		TSField = { fg = ansi.white },
		TSFunction = { fg = ansi.white },
		TSFuncBuiltin = { fg = ansi.white },
		TSFuncMacro = { fg = ansi.white },
		TSKeyword = { fg = ansi.white },
		TSKeywordFunction = { fg = ansi.white },
		TSLabel = { fg = ansi.white },
		TSMethod = { fg = ansi.white },
		TSNamespace = { fg = ansi.white },
		TSNone = { fg = const_fg },
		TSParameter = { fg = ansi.white },
		TSParameterReference = { fg = ansi.white },
		TSProperty = { fg = ansi.white },
		TSPunctDelimiter = { fg = punct_fg },
		TSPunctBracket = { fg = punct_fg },
		TSPunctSpecial = { fg = punct_fg },
		TSRepeat = { fg = ansi.white },
		TSString = { fg = string_fg },
		TSStringRegex = { bg = "#586e75", fg = const_fg },
		TSStringEscape = { bg = "#586e75", fg = const_fg },
		TSSymbol = {},
		TSType = { fg = ansi.white },
		TSTypeBuiltin = { fg = ansi.white },
		TSVariable = { fg = ansi.white },
		TSVariableBuiltin = { fg = ansi.white },
		TSTag = { fg = ansi.white },
		TSTagDelimiter = { fg = punct_fg },
		TSText = { fg = ansi.white },
		["@attribute"] = {},
		["@constructor"] = { fg = ansi.white },
		["@conditional"] = { fg = ansi.white },
		["@constant.builtin"] = { fg = const_fg },
		["@constant.macro"] = { fg = ansi.white },
		["@error"] = { bg = mistake.bg, fg = mistake.fg },
		["@exception"] = { fg = ansi.white },
		["@field"] = { fg = ansi.white },
		["@function"] = { fg = ansi.white },
		["@function.builtin"] = { fg = ansi.white },
		["@function.macro"] = { fg = ansi.white },
		["@keyword"] = { fg = ansi.white },
		["@keyword.function"] = { fg = ansi.white },
		["@label"] = { fg = ansi.white },
		["@method"] = { fg = ansi.white },
		["@module"] = { fg = ansi.white },
		["@namespace"] = { fg = ansi.white },
		["@none"] = { fg = const_fg },
		["@parameter"] = { fg = ansi.white },
		["@parameter.reference"] = { fg = ansi.white },
		["@property"] = { fg = ansi.white },
		["@punctuation.delimiter"] = { fg = punct_fg },
		["@punctuation.bracket"] = { fg = punct_fg },
		["@punctuation.special"] = { fg = punct_fg },
		["@repeat"] = { fg = ansi.white },
		["@string"] = { fg = string_fg },
		["@string.regex"] = { fg = ansi.magenta },
		["@string.escape"] = { fg = ansi.magenta },
		["@symbol"] = {},
		["@type"] = { fg = ansi.white },
		["@type.builtin"] = { fg = ansi.white },
		["@variable"] = { fg = ansi.white },
		["@variable.builtin"] = { fg = ansi.white },
		["@tag"] = { fg = ansi.white },
		["@tag.delimiter"] = { fg = punct_fg },
		["@text"] = { fg = ansi.white },
		["@text.note"] = { bg = bg, fg = ansi.blue },
		["@text.warning"] = { bg = warn, fg = bg },

		--- Theme specific
		["@AlabasterConstant"] = { fg = const_fg },
		["@AlabasterDefinition"] = { fg = def_fg },
		["@AlabasterPunct"] = { fg = punct_fg },
		["@AlabasterString"] = { fg = string_fg },
		["@AlabasterHashbang"] = { fg = dim_comment },
		--- Gitsigns
		GitSignsAdd = { fg = diffadd },
		GitSignsChange = { fg = diffchange },
		GitSignsDelete = { fg = diffdelete },
		--- Telescope
		TelescopeBorder = { fg = ansi.magenta },
		TelescopeMatching = { fg = ansi.orange },
		TelescopeMultiSelection = { fg = ansi.magenta },
		TelescopePromptPrefix = { fg = ansi.blue },
		TelescopeSelectionCaret = { fg = mistake.fg },
		TelescopeTitle = { fg = ansi.blue },
		TelescopeResultsTitle = { fg = ansi.blue },
		--- Fugitive
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },
		--- Statusline
		StatuslineAdd = { fg = diffadd, bg = statusline },
		StatuslineErr = { fg = error, bg = statusline },
		StatuslineHint = { fg = hint, bg = statusline },
		StatuslineInfo = { fg = info, bg = statusline },
		StatuslineWarn = { fg = warn, bg = statusline },
		StatuslineBlue = { fg = ansi.blue, bg = statusline },
		StatuslineRed = { fg = ansi.red, bg = statusline },
		StatuslineGreen = { fg = ansi.green, bg = statusline },
		StatuslineCyan = { fg = ansi.cyan, bg = statusline },
		StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
		--- For `highlight link`
		AlabasterBlack = { fg = ansi.black },
		AlabasterBlue = { fg = ansi.blue },
		AlabasterBrightYellow = { fg = ansi.brightyellow },
		AlabasterCyan = { fg = ansi.cyan },
		AlabasterGreen = { fg = ansi.green },
		AlabasterDarkGreen = { fg = green},
		AlabasterMagenta = { fg = ansi.magenta },
		AlabasterRed = { fg = ansi.red },
		AlabasterWhite = { fg = ansi.white },
		AlabasterYellow = { fg = ansi.yellow },
		--- checkhealth
		healthSuccess = { fg = ansi.green, bg = bg },
		--- cmp
		CmpItemMenuDefault = { fg = ansi.magenta },
		--- nvim-ts-rainbow
		rainbowcol1 = { fg = ansi.yellow },
		rainbowcol2 = { fg = ansi.magenta },
		rainbowcol3 = { fg = ansi.blue },
		rainbowcol4 = { fg = ansi.green },
		rainbowcol5 = { fg = ansi.brightyellow },
		rainbowcol6 = { fg = ansi.red },
		rainbowcol7 = { fg = ansi.cyan },
		--- Noice
		NoiceCmdlineIcon = { link = "AlabasterMagenta" },
		NoiceCmdlinePopupBorder = { link = "AlabasterMagenta" },
		NoiceConfirmBorder = { link = "AlabasterMagenta" },
		NoiceCmdlinePopupBorderCmdline = { link = "AlabasterMagenta" },
		NoiceCmdlineIconCmdline = { link = "AlabasterMagenta" },
		NoiceCmdlinePopupBorderFilter = { link = "AlabasterMagenta" },
		NoiceCmdlineIconFilter = { link = "AlabasterMagenta" },
		NoiceCmdlinePopupBorderLua = { link = "AlabasterMagenta" },
		NoiceCmdlineIconLua = { link = "AlabasterMagenta" },
		NoiceCmdlinePopupBorderSearch = { link = "AlabasterBlue" },
		NoiceCmdlineIconSearch = { link = "AlabasterBlue" },
		-- Languages
		--- asm
		asmDirective = { fg = dim_comment },
		nasmLabel = { link = "@AlabasterDefinition" },
	}
end

for group, hl in pairs(theme) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- vi:nowrap
