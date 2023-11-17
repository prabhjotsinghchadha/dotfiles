local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  cli_options = {
  arrowParens = "always",
  bracketSameLine = false,
  bracketSpacing = true,
  embeddedLanguageFormatting = "auto",
  htmlWhitespaceSensitivity = "css",
  insertPragma = false,
  jsxSingleQuote = false,
  proseWrap = "preserve",
  quoteProps = "as-needed",
  requirePragma = false,
  semi = true,
  singleAttributePerLine = false,
  singleQuote = false,
  tabWidth = 4,
  trailingComma = "es5",
  useTabs = false,
  vueIndentScriptAndStyle = false,
  printWidth = 100
  },
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}
