return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "indent" },
        cpp = { "indent" },
        python = { "ruff_format" },
      },
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      formatters = {
        indent = {
          args = {
            "-i4", -- indent 4 spaces
            "-ts4", -- set tab size to 4 spaces
            "-br", -- puts opening brace ({) on if line
            "-brf", -- puts opening brace on function line
            "-brs", -- puts opening brace on struct line
            "-ncs", -- no space after cast
            "-l1000", -- max length for non comment lines
            "-lc1000", -- max length for comment lines
            "-nbad", -- no blank lines after declaration
            "-bap", -- puts a blank line after procedure body
            "-nbbo", -- do not break long lines before boolean operators
            "-cdb", -- places multi-line comment delimiters on blank lines
            "-ce", -- puts else on the same line as '}'
            "-cdw", -- puts while on the same line as '}' in do while
            "-ss", -- places a space before ';' if its put at the end of a for or while statement
            "-npcs", -- no space after function name in function calls
            "-nbc", -- no blank lines after commas in declarations
            "-sar", -- puts a space after '{' and before '}' in initializers
            "-lp", -- lines up multiple lines with enclosing parentheses
            "-ut", -- use tabs
            "-nbfda", -- dont put arguments on new lines in function declarations
            "-nhnl", -- doesnt break long lines (its a confusing description)
            "-nprs", -- no space after '(' and before ')'
            "-npsl", -- puts procedure type on the same line as its name
            "-nsob", -- dont swallow optional blank lines
            "-pal", -- aligns the '*' in pointers to the left, next to the type
            "-cli4", -- indents case by 4 spaces
          },
        },
      },
    }
    return opts
  end,
}
