-- File: lua/black/init.lua
local M = {}

M.black = {
	gray1 = "#111111",
	gray2 = "#222222",
	gray3 = "#333333",
	gray4 = "#444444",
	gray7 = "#777777",
	graya = "#aaaaaa",
	white = "#d6deeb",
	bright = "#eeeeee",
	black = "#000000",
	neardark = "#112630",
	purple = "#c792ea",
	green = "#c5e478",
	yellow = "#ffcb8b",
	gray = "#637777",
	blue = "#82aaff",
	yellow2 = "#f78c6c",
	yellow3 = "#fbec9f",
	yellow4 = "#f4d554",
	green2 = "#7fdbca",
	red = "#ff5874",
	blue2 = "#5ca7e4",
	purple2 = "#2d2c5d",
	hoki = "#5f7e97",
	error_fg = "#EF5350",
	info_fg = "#64B5F6",
	warn_fg = "#FFCA28",
	hint_fg = "#c51cfd",
	none = "NONE",
}

local function terminal_color()
	vim.g.terminal_color_0 = M.black.black
	vim.g.terminal_color_1 = M.black.red
	vim.g.terminal_color_2 = M.black.green
	vim.g.terminal_color_3 = M.black.yellow2
	vim.g.terminal_color_4 = M.black.blue
	vim.g.terminal_color_5 = M.black.purple
	vim.g.terminal_color_6 = M.black.green2
	vim.g.terminal_color_7 = M.black.graya
	vim.g.terminal_color_8 = M.black.gray
	vim.g.terminal_color_9 = M.black.red
	vim.g.terminal_color_10 = M.black.green
	vim.g.terminal_color_11 = M.black.yellow2
	vim.g.terminal_color_12 = M.black.blue
	vim.g.terminal_color_13 = M.black.purple
	vim.g.terminal_color_14 = M.black.green2
	vim.g.terminal_color_15 = M.black.bright
end

local function highlight(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""
	vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

local function load_syntax()
	local syntax = {
		Normal = { fg = M.black.white, bg = M.black.black },
		Terminal = { fg = M.black.white, bg = M.black.darkblue },
		LineNr = { fg = M.black.gray4, bg = M.black.black },
		Cursor = { fg = M.black.hint_fg, bg = M.black.neardark },
		CursorLine = { bg = M.black.neardark },
		CursorLineNr = { fg = M.black.graya, bg = M.black.neardark },
		ColorColumn = { bg = M.black.gray2 },
		Directory = { fg = M.black.blue },
		DiffAdd = { fg = M.black.black, bg = M.black.green },
		DiffChange = { fg = M.black.black, bg = M.black.yellow },
		DiffDelete = { fg = M.black.black, bg = M.black.red },
		DiffText = { fg = M.black.black, bg = M.black.green },
		diffAdded = { fg = M.black.green },
		diffRemoved = { fg = M.black.red },
		VertSplit = { fg = M.black.gray7 },
		Folded = { fg = M.black.gray7, bg = M.black.black },
		FoldColumn = { fg = M.black.gray3, bg = M.black.black },
		SignColumn = { fg = M.black.none, bg = M.black.black },
		IncSearch = { fg = M.black.bright, bg = M.black.yellow },
		NonText = { fg = M.black.gray4 },
		PMenu = { bg = M.black.purple2 },
		PMenuSel = { bg = M.black.purple },
		Search = { fg = M.black.black, bg = M.black.yellow },
		SpecialKey = { fg = M.black.yellow },
		StatusLine = { fg = M.black.bright, bg = M.black.neardark },
		StatusLineNC = { fg = M.black.gray7, bg = M.black.neardark },
		Title = { fg = M.black.blue },
		Visual = { fg = M.black.white, bg = M.black.purple2 },
		EndOfBuffer = { fg = M.black.gray4, bg = M.black.black },
		Comment = { fg = M.black.gray, style = "italic" },
		Constant = { fg = M.black.green },
		String = { fg = M.black.yellow },
		Identifier = { fg = M.black.green2 },
		Statement = { fg = M.black.blue },
		Operator = { fg = M.black.purple },
		Exception = { fg = M.black.green },
		PreProc = { fg = M.black.purple },
		Type = { fg = M.black.green },
		StorageClass = { fg = M.black.purple },
		htmlTag = { fg = M.black.gray, bg = M.black.none },
		htmlEndTag = { fg = M.black.gray, bg = M.black.none },
		Todo = { fg = M.black.gray7, bg = M.black.yellow },
		jsStorageClass = { fg = M.black.blue },
		jsOperator = { fg = M.black.purple },
		jsArrowFunction = { fg = M.black.purple },
		jsString = { fg = M.black.yellow },
		jsComment = { fg = M.black.gray, style = "italic" },
		jsFuncCall = { fg = M.black.blue },
		jsNumber = { fg = M.black.yellow2 },
		jsSpecial = { fg = M.black.yellow2 },
		jsObjectProp = { fg = M.black.green2 },
		jsOperatorKeyword = { fg = M.black.green2 },
		jsBooleanFalse = { fg = M.black.red },
		jsBooleanTrue = { fg = M.black.red },
		jsRegexpString = { fg = M.black.blue2 },
		jsConditional = { fg = M.black.purple },
		jsFunction = { fg = M.black.blue },
		jsReturn = { fg = M.black.purple },
		jsFuncName = { fg = M.black.blue },
		jsParensError = { fg = M.black.blue },
		jsClassDefinition = { fg = M.black.yellow },
		jsImport = { fg = M.black.purple, style = "italic" },
		jsFrom = { fg = M.black.purple, style = "italic" },
		jsModuleAs = { fg = M.black.purple, style = "italic" },
		jsExport = { fg = M.black.green2 },
		jsExportDefault = { fg = M.black.green2 },
		jsExtendsKeyword = { fg = M.black.purple, style = "italic" },
		javaScriptReserved = { fg = M.black.blue },
		javaScriptConditional = { fg = M.black.purple },
		javaScriptStringS = { fg = M.black.yellow },
		javaScriptBoolean = { fg = M.black.red },
		javaScriptBraces = { fg = M.black.white },
		javaScriptLineComment = { fg = M.black.gray, style = "italic" },
		javaScriptSpecial = { fg = M.black.yellow2 },
		javaScriptFunction = { fg = M.black.blue },
		javaScriptStatement = { fg = M.black.purple },
		javaScriptException = { fg = M.black.green },
		scssSelectorName = { fg = M.black.green },
		cssTagName = { fg = M.black.red },
		cssClassName = { fg = M.black.green, style = "italic" },
		cssClassNameDot = { fg = M.black.green, style = "italic" },
		cssBraces = { fg = M.black.white },
		cssPositioningProp = { fg = M.black.green2 },
		cssBoxProp = { fg = M.black.green2 },
		cssDimensionProp = { fg = M.black.green2 },
		cssTransitionProp = { fg = M.black.green2 },
		cssTextProp = { fg = M.black.green2 },
		cssFontProp = { fg = M.black.green2 },
		cssBorderProp = { fg = M.black.green2 },
		cssBackgroundProp = { fg = M.black.green2 },
		cssUIProp = { fg = M.black.green2 },
		cssIEUIProp = { fg = M.black.red },
		scssFunctionName = { fg = M.black.green },
		cssPositioningAttr = { fg = M.black.red },
		cssTableAttr = { fg = M.black.red },
		cssCommonAttr = { fg = M.black.red },
		cssColorProp = { fg = M.black.green2 },
		cssIncludeKeyword = { fg = M.black.green2 },
		cssKeyFrameSelector = { fg = M.black.green },
		cssPseudoClassId = { fg = M.black.green, style = "italic" },
		cssBorderAttr = { fg = M.black.red },
		cssValueLength = { fg = M.black.yellow2 },
		cssUnitDecorators = { fg = M.black.yellow3 },
		cssIdentifier = { fg = M.black.yellow4, style = "italic" },
		markdownHeadingDelimiter = { fg = M.black.gray },
		markdownCodeDelimiter = { fg = M.black.yellow },
		markdownCode = { fg = M.black.graya },
		mkdCodeStart = { fg = M.black.white },
		mkdCodeEnd = { fg = M.black.white },
		mkdLinkDef = { fg = M.black.green2 },
		mkdCodeDelimiter = { fg = M.black.gray, bg = M.black.black },
		htmlH1 = { fg = M.black.blue, style = "bold" },
		htmlH2 = { fg = M.black.blue, style = "bold" },
		htmlH3 = { fg = M.black.blue, style = "bold" },
		htmlH4 = { fg = M.black.blue },
		htmlH5 = { fg = M.black.blue },
		htmlBold = { fg = M.black.purple, bg = M.black.black, style = "bold" },
		shComment = { fg = M.black.gray, bg = M.black.black, style = "italic" },
		NERDTreeDir = { fg = M.black.hoki },
		NERDTreeOpenable = { fg = M.black.red },
		NERDTreeClosable = { fg = M.black.yellow },
		NERDTreeHelp = { fg = M.black.gray4, style = "italic" },
		NERDTreeUp = { fg = M.black.gray },
		NERDTreeDirSlash = { fg = M.black.gray },
		gitcommitSummary = { fg = M.black.white },
		IndentGuidesOdd = { bg = M.black.gray4 },
		IndentGuidesEven = { bg = M.black.gray7 },
		GitGutterAdd = { fg = M.black.green },
		GitGutterChange = { fg = M.black.yellow },
		GitGutterDelete = { fg = M.black.red },
		GitGutterChangeDelete = { fg = M.black.yellow },
		LspDiagnosticsSignError = { fg = M.black.error_fg },
		LspDiagnosticsSignWarning = { fg = M.black.warn_fg },
		LspDiagnosticsSignInformation = { fg = M.black.info_fg },
		LspDiagnosticsSignHint = { fg = M.black.hint_fg },
		LspDiagnosticsVirtualTextError = { fg = M.black.error_fg },
		LspDiagnosticsVirtualTextWarning = { fg = M.black.warn_fg },
		LspDiagnosticsVirtualTextInformation = { fg = M.black.info_fg },
		LspDiagnosticsVirtualTextHint = { fg = M.black.hint_fg },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = M.black.error_fg },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = M.black.warn_fg },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = M.black.info_fg },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = M.black.hint_fg },
	}
	return syntax
end

function M.get_black_color()
	return M.black
end

function M.colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true

	terminal_color()
	local syntax = load_syntax()

	for group, colors in pairs(syntax) do
		highlight(group, colors)
	end
end

function M.setup()
	M.colorscheme()
end

return M
