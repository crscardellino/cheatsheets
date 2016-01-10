# Cheatsheet for Vim

## Vim Cheatsheet

[Cheatsheet](http://vim.rtorr.com/)

## Plugins cheatsheet

### CtrlP Fuzzy Finder

#### Basic Usage
* Run `:CtrlP` or `:CtrlP [starting-directory]` to invoke CtrlP in find file mode.
* Run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in find buffer or find MRU file mode.
* Run `:CtrlPMixed` to search in Files, Buffers and MRU files at the same time.

Check `:help ctrlp-commands` and `:help ctrlp-extensions` for other commands.

#### Once CtrlP is open:
* Press `<F5>` to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
* Press `<c-f>` and `<c-b>` to cycle between modes.
* Press `<c-d>` to switch to filename only search instead of full path.
* Press `<c-r>` to switch to regexp mode.
* Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
* Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
* Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
* Use `<c-y>` to create a new file and its parent directories.
* Use `<c-z>` to mark/unmark multiple files and `<c-o>` to open them.

### vimtex (localleader = \)
* `\lY` toggle tags
* `\lv` view pdf
* `\ll` compile
* `\lk` stops / `\lK` stops all
* `\le` errors
* `\lo` output
* `\lc` clean / `\lC` clean full
* `:h vimtex` help   
* `:h vimtex-commands` help on commands

### vim-fugitive
* `:Gedit` (`:Gsplit`, `:Gvsplit`, `:Gtabedit`, etc) edit file and write it to
  state changes.
* `:Gdiff` to bring up the staged version of the file side by side 

### vim-commentary
* `gc{Motion}` to comment a chunk of code
* `:7,17Commentary` comments a range
* `:g/TODO/Commentary` part of a global comment

### vim-bundler

* `:Bundle`, which wraps `bundle`.
* An internalized version of `bundle open`: `:Bopen` (and `:Bsplit`,
  `:Btabedit`, etc.).
* `'path'` and `'tags'` are automatically altered to include all gems
  from your bundle.  (Generate those tags with
  [gem-ctags](https://github.com/tpope/gem-ctags)!)

### vim-rails
* Easy navigation of the Rails directory structure.  `gf` considers
  context and knows about partials, fixtures, and much more.  There are
  two commands, `:A` (alternate) and `:R` (related) for easy jumping
  between files, including favorites like model to schema, template to
  helper, and controller to functional test.  Commands like `:Emodel`,
  `:Eview`, `:Econtroller`, are provided to `:edit` files by type, along
  with `S`, `V`, and `T` variants for `:split`, `:vsplit`, and
  `:tabedit`.  Throw a bang on the end (`:Emodel foo!`) to automatically
  create the file with the standard boilerplate if it doesn't exist.
  `:help rails-navigation`

* Enhanced syntax highlighting.  From `has_and_belongs_to_many` to
  `distance_of_time_in_words`, it's here.

* Interface to rake.  Use `:Rake` to run the current test, spec, or
  feature.  Use `:.Rake` to do a focused run of just the method,
  example, or scenario on the current line.  `:Rake` can also run
  arbitrary migrations, load individual fixtures, and more.
  `:help rails-rake`

* Interface to the `rails` command.  Generally, use `:Rails console` to
  call `rails console`.  Many commands have wrappers with additional features:
  `:Rgenerate controller Blog` generates a blog controller and loads the
  generated files into the quickfix list, and `:Rrunner` wraps `rails runner`
  and doubles as a direct test runner.  `:help rails-scripts`

* Partial and concern extraction.  In a view, `:Rextract {file}`
  replaces the desired range (typically selected in visual line mode)
  with `render '{file}'`, which is automatically created with your
  content.  In a model or controller, a concern is created, with the
  appropriate `include` declaration left behind.
  `:help rails-:Rextract`

