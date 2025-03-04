## Key mappings|


nvim-data folder = ~/AppData/Local/nvim-data

|                   |   x   | :help v_star-default                          | vim/_defaults.lua:50                                                            |
| ----------------- | :---: | --------------------------------------------- | ------------------------------------------------------------------------------- |
| ,                 |   n   | Prev ftFT                                     | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| ,                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| ,                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| ;                 |   n   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| ;                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| ;                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| [%                |   n   |                                               | <Plug>(MatchitNormalMultiBackward)                                              |
| [%                |   o   |                                               | <Plug>(MatchitOperationMultiBackward)                                           |
| [%                |   x   |                                               | <Plug>(MatchitVisualMultiBackward)                                              |
| [B                |   n   | Move buffer prev                              | <Cmd>BufferLineMovePrev<CR>                                                     |
| [b                |   n   | Prev Buffer                                   | <Cmd>BufferLineCyclePrev<CR>                                                    |
| [d                |   n   | Prev Diagnostic                               | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| [e                |   n   | Prev Error                                    | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| [i                |   n   | jump to top edge of scope                     | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| [i                |   o   | jump to top edge of scope                     | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| [i                |   x   | jump to top edge of scope                     | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| [q                |   n   | Previous Quickfix                             | vim/_editor.lua:436                                                             |
| [t                |   n   | Previous Todo Comment                         | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| [w                |   n   | Prev Warning                                  | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| ]%                |   n   |                                               | <Plug>(MatchitNormalMultiForward)                                               |
| ]%                |   o   |                                               | <Plug>(MatchitOperationMultiForward)                                            |
| ]%                |   x   |                                               | <Plug>(MatchitVisualMultiForward)                                               |
| ]B                |   n   | Move buffer next                              | <Cmd>BufferLineMoveNext<CR>                                                     |
| ]b                |   n   | Next Buffer                                   | <Cmd>BufferLineCycleNext<CR>                                                    |
| ]d                |   n   | Next Diagnostic                               | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| ]e                |   n   | Next Error                                    | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| ]i                |   n   | jump to bottom edge of scope                  | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| ]i                |   o   | jump to bottom edge of scope                  | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| ]i                |   x   | jump to bottom edge of scope                  | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:785                             |
| ]q                |   n   | Next Quickfix                                 | vim/_editor.lua:436                                                             |
| ]t                |   n   | Next Todo Comment                             | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| ]w                |   n   | Next Warning                                  | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:125                       |
| @                 |   x   | ' : '@' :help v_@-default                     | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>                                |
| &                 |   n   | :help &-default                               | :&&<CR>                                                                         |
| #                 |   x   | :help v_#-default                             | vim/_defaults.lua:53                                                            |
| %                 |   n   |                                               | <Plug>(MatchitNormalForward)                                                    |
| %                 |   o   |                                               | <Plug>(MatchitOperationForward)                                                 |
| %                 |   x   |                                               | <Plug>(MatchitVisualForward)                                                    |
| <                 |   v   |                                               | <gv                                                                             |
| <C-_>             |   n   | which_key_ignore                              | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:191                       |
| <C-/>             |   n   | Terminal (Root Dir)                           | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:190                       |
| <C-B>             |   n   | Scroll Backward                               | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:233                           |
| <C-B>             |   s   | Scroll Backward                               | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:233                           |
| <C-Down>          |   n   | Decrease Window Height                        | <Cmd>resize -2<CR>                                                              |
| <C-F>             |   n   | Scroll Forward                                | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:232                           |
| <C-F>             |   s   | Scroll Forward                                | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:232                           |
| <C-H>             |   n   | <C-W>h Go to Left Window                      |                                                                                 |
| <C-J>             |   n   | <C-W>j Go to Lower Window                     |                                                                                 |
| <C-K>             |   n   | <C-W>k Go to Upper Window                     |                                                                                 |
| <C-L>             |   n   | <C-W>l Go to Right Window                     |                                                                                 |
| <C-Left>          |   n   | Decrease Window Width                         | <Cmd>vertical resize -2<CR>                                                     |
| <C-Right>         |   n   | Increase Window Width                         | <Cmd>vertical resize +2<CR>                                                     |
| <C-S>             |   n   | <Esc> Save File                               | <Cmd>w<CR>                                                                      |
| <C-S>             |   s   | <Esc> Save File                               | <Cmd>w<CR>                                                                      |
| <C-S>             |   x   | <Esc> Save File                               | <Cmd>w<CR>                                                                      |
| <C-Up>            |   n   | Increase Window Height                        | <Cmd>resize +2<CR>                                                              |
| <C-W><C-D>        |   n   | <C-W>d Show diagnostics under the cursor      |                                                                                 |
| <C-W><Space>      |   n   | Window Hydra Mode (which-key)                 | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:104                       |
| <C-W>d            |   n   | Show diagnostics under the cursor             | vim/_defaults.lua:162                                                           |
| <CR>              |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:713                        |
| <Down>            |   n   | v:count == 0 ? 'gj' : 'j' Down                |                                                                                 |
| <Down>            |   x   | v:count == 0 ? 'gj' : 'j' Down                |                                                                                 |
| <Esc>             |   n   | Escape and Clear hlsearch                     | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:49                        |
| <Esc>             |   s   | Escape and Clear hlsearch                     | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:49                        |
| <M-j>             |   n   | == Move Down                                  | <Cmd>execute 'move .+' . v:count1<CR>                                           |
| <M-j>             |   v   | gv=gv Move Down                               | :<C-U>execute "'<,'>move '>+" . v:count1<CR>                                    |
| <M-k>             |   n   | == Move Up                                    | <Cmd>execute 'move .-' . (v:count1 + 1)<CR>                                     |
| <M-k>             |   v   | gv=gv Move Up                                 | :<C-U>execute "'<,'>move '<-" . (v:count1 + 1)<CR>                              |
| <S-Tab>           |   s   | Jump Previous                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:218                       |
| <Space>           |   n   | Split Window Right                            | <C-W>v                                                                          |
| <Space>-          |   n   | Split Window Below                            | <C-W>s                                                                          |
| <Space>,          |   n   | Buffers                                       | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:59   |
| <Space>:          |   n   | Command History                               | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:61   |
| <Space>?          |   n   | Buffer Keymaps (which-key)                    | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:97                        |
| <Space>.          |   n   | Toggle Scratch Buffer                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/util.lua:32                          |
| <Space>/          |   n   | Grep (Root Dir)                               | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>`          |   n   | Switch to Other Buffer                        | <Cmd>e #<CR>                                                                    |
| <Space><Space>    |   n   | [F]ind [F]iles                                | ~/AppData/Local/nvim/lua/config/keymaps.lua:5                                   |
| <Space><Tab>[     |   n   | Previous Tab                                  | <Cmd>tabprevious<CR>                                                            |
| <Space><Tab>]     |   n   | Next Tab                                      | <Cmd>tabnext<CR>                                                                |
| <Space><Tab><Tab> |   n   | New Tab                                       | <Cmd>tabnew<CR>                                                                 |
| <Space><Tab>d     |   n   | Close Tab                                     | <Cmd>tabclose<CR>                                                               |
| <Space><Tab>f     |   n   | First Tab                                     | <Cmd>tabfirst<CR>                                                               |
| <Space><Tab>l     |   n   | Last Tab                                      | <Cmd>tablast<CR>                                                                |
| <Space><Tab>o     |   n   | Close Other Tabs                              | <Cmd>tabonly<CR>                                                                |
| <Space>bb         |   n   | Switch to Other Buffer                        | <Cmd>e #<CR>                                                                    |
| <Space>bd         |   n   | Delete Buffer                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:40                        |
| <Space>bD         |   n   | Delete Buffer and Window                      | <Cmd>:bd<CR>                                                                    |
| <Space>bl         |   n   | Delete Buffers to the Left                    | <Cmd>BufferLineCloseLeft<CR>                                                    |
| <Space>bo         |   n   | Delete Other Buffers                          | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:43                        |
| <Space>bP         |   n   | Delete Non-Pinned Buffers                     | <Cmd>BufferLineGroupClose ungrouped<CR>                                         |
| <Space>bp         |   n   | Toggle Pin                                    | <Cmd>BufferLineTogglePin<CR>                                                    |
| <Space>br         |   n   | Delete Buffers to the Right                   | <Cmd>BufferLineCloseRight<CR>                                                   |
| <Space>cd         |   n   | Line Diagnostics                              | C:/tools/neovim/nvim-win64/share/nvim/runtime/lua/vim/diagnostic.lua:1700       |
| <Space>cf         |   n   | Format                                        | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:117                       |
| <Space>cF         |   n   | Format Injected Langs                         | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>cf         |   v   | Format                                        | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:117                       |
| <Space>cF         |   v   | Format Injected Langs                         | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>cm         |   n   | Mason                                         | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>dph        |   n   | Toggle Profiler Highlights                    | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>dpp        |   n   | Toggle Profiler                               | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>dps        |   n   | Profiler Scratch Buffer                       | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/util.lua:34                          |
| <Space>E          |   n   | Explorer Snacks (cwd)                         | <Space>fE                                                                       |
| <Space>e          |   n   | Explorer Snacks (root dir)                    | <Space>fe                                                                       |
| <Space>fb         |   n   | Buffers                                       | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:65   |
| <Space>fB         |   n   | Buffers (all)                                 | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:66   |
| <Space>fc         |   n   | Find Config File                              | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>fE         |   n   | Explorer Snacks (cwd)                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_explorer.lua:16 |
| <Space>fe         |   n   | Explorer Snacks (root dir)                    | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_explorer.lua:9  |
| <Space>fF         |   n   | Find Files (cwd)                              | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>ff         |   n   | Find Files (Root Dir)                         | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>fg         |   n   | Find Files (git-files)                        | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:70   |
| <Space>fn         |   n   | New File                                      | <Cmd>enew<CR>                                                                   |
| <Space>fp         |   n   | Find Plugin File                              | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>fr         |   n   | Recent                                        | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>fR         |   n   | Recent (cwd)                                  | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:72   |
| <Space>fT         |   n   | Terminal (cwd)                                | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:188                       |
| <Space>ft         |   n   | Terminal (Root Dir)                           | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:189                       |
| <Space>gb         |   n   | Git Blame Line                                | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:171                       |
| <Space>gB         |   n   | Git Browse (open)                             | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:172                       |
| <Space>gB         |   x   | Git Browse (open)                             | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:172                       |
| <Space>gc         |   n   | Git Log                                       | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:75   |
| <Space>gd         |   n   | Git Diff (hunks)                              | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:76   |
| <Space>gf         |   n   | Git Current File History                      | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:166                       |
| <Space>gG         |   n   | Lazygit (cwd)                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:165                       |
| <Space>gg         |   n   | Lazygit (Root Dir)                            | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:164                       |
| <Space>gl         |   n   | Git Log                                       | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:167                       |
| <Space>gL         |   n   | Git Log (cwd)                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:168                       |
| <Space>gS         |   n   | Git Stash                                     | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:78   |
| <Space>gs         |   n   | Git Status                                    | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:77   |
| <Space>gY         |   n   | Git Browse (copy)                             | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:173                       |
| <Space>gY         |   x   | Git Browse (copy)                             | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:173                       |
| <Space>K          |   n   | Keywordprg                                    | <Cmd>norm! K<CR>                                                                |
| <Space>l          |   n   | Lazy                                          | <Cmd>Lazy<CR>                                                                   |
| <Space>L          |   n   | LazyVim Changelog                             | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:185                       |
| <Space>n          |   n   | Notification History                          | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:63   |
| <Space>qd         |   n   | Don't Save Current Session                    | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>ql         |   n   | Restore Last Session                          | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>qq         |   n   | Quit All                                      | <Cmd>qa<CR>                                                                     |
| <Space>qs         |   n   | Restore Session                               | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>qS         |   n   | Select Session                                | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>S          |   n   | Select Scratch Buffer                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/util.lua:33                          |
| <Space>s"         |   n   | Registers                                     | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:88   |
| <Space>s/         |   n   | Search History                                | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:89   |
| <Space>sa         |   n   | Autocmds                                      | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:90   |
| <Space>sb         |   n   | Buffer Lines                                  | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:80   |
| <Space>sB         |   n   | Grep Open Buffers                             | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:81   |
| <Space>sc         |   n   | Command History                               | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:91   |
| <Space>sC         |   n   | Commands                                      | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:92   |
| <Space>sD         |   n   | Buffer Diagnostics                            | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:94   |
| <Space>sd         |   n   | Diagnostics                                   | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:93   |
| <Space>sg         |   n   | [S]earch using [G]rep (Root Dir)              | ~/AppData/Local/nvim/lua/config/keymaps.lua:13                                  |
| <Space>sG         |   n   | Grep (cwd)                                    | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>sh         |   n   | Help Pages                                    | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:95   |
| <Space>sH         |   n   | Highlights                                    | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:96   |
| <Space>si         |   n   | Icons                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:97   |
| <Space>sj         |   n   | Jumps                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:98   |
| <Space>sk         |   n   | Keymaps                                       | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:99   |
| <Space>sl         |   n   | Location List                                 | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:100  |
| <Space>sM         |   n   | Man Pages                                     | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:101  |
| <Space>sm         |   n   | Marks                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:102  |
| <Space>sn         |   n   | +noice                                        | <Nop>                                                                           |
| <Space>sna        |   n   | Noice All                                     | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:229                           |
| <Space>snd        |   n   | Dismiss All                                   | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:230                           |
| <Space>snh        |   n   | Noice History                                 | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:228                           |
| <Space>snl        |   n   | Noice Last Message                            | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:227                           |
| <Space>snt        |   n   | Noice Picker (Telescope/FzfLua)               | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:231                           |
| <Space>sp         |   n   | Search for Plugin Spec                        | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:84   |
| <Space>sq         |   n   | Quickfix List                                 | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:104  |
| <Space>sR         |   n   | Resume                                        | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:103  |
| <Space>sr         |   n   | Search and Replace                            | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>sr         |   v   | Search and Replace                            | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>st         |   n   | Todo                                          | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>sT         |   n   | Todo/Fix/Fixme                                | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>su         |   n   | Undotree                                      | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:105  |
| <Space>sW         |   n   | Visual selection or word (cwd)                | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>sw         |   n   | Visual selection or word (Root Dir)           | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>sW         |   x   | Visual selection or word (cwd)                | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>sw         |   x   | Visual selection or word (Root Dir)           | nvim-data/lazy/LazyVim/lua/lazyvim/util/pick.lua:70                             |
| <Space>ua         |   n   | Toggle Animations                             | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uA         |   n   | Toggle Tabline                                | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>ub         |   n   | Toggle Dark Background                        | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uC         |   n   | Colorschemes                                  | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_picker.lua:107  |
| <Space>uc         |   n   | Toggle Conceal Level                          | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>ud         |   n   | Toggle Diagnostics                            | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uD         |   n   | Toggle Dimming                                | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uF         |   n   | Toggle Auto Format (Buffer)                   | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uf         |   n   | Toggle Auto Format (Global)                   | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>ug         |   n   | Toggle Indent Guides                          | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uh         |   n   | Toggle Inlay Hints                            | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>ui         |   n   | Inspect Pos                                   | C:/tools/neovim/nvim-win64/share/nvim/runtime/lua/vim/_inspector.lua:152        |
| <Space>uI         |   n   | Inspect Tree                                  | <Cmd>InspectTree<CR>                                                            |
| <Space>ul         |   n   | Toggle Line Numbers                           | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uL         |   n   | Toggle Relative Number                        | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>un         |   n   | Dismiss All Notifications                     | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/ui.lua:291                           |
| <Space>up         |   n   | Toggle Mini Pairs                             | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>ur         |   n   | Redraw / Clear hlsearch / Diff Update         | <Cmd>nohlsearch                                                                 |
| <Space>uS         |   n   | Toggle Smooth Scroll                          | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>us         |   n   | Toggle Spelling                               | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uT         |   n   | Toggle Treesitter Highlight                   | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uw         |   n   | Toggle Wrap                                   | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uz         |   n   | Toggle Zen Mode                               | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>uZ         |   n   | Toggle Zoom Mode                              | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>wd         |   n   | Delete Window                                 | <C-W>c                                                                          |
| <Space>wm         |   n   | Toggle Zoom Mode                              | nvim-data/lazy/snacks.nvim/lua/snacks/toggle.lua:115                            |
| <Space>xl         |   n   | Location List                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:98                        |
| <Space>xq         |   n   | Quickfix List                                 | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:106                       |
| <Space>xt         |   n   | Todo (Trouble)                                | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Space>xT         |   n   | Todo/Fix/Fixme (Trouble)                      | nvim-data/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:121                     |
| <Tab>             |   s   | Jump Next                                     | nvim-data/lazy/LazyVim/lua/lazyvim/config/keymaps.lua:215                       |
| <Up>              |   n   | v:count == 0 ? 'gk' : 'k' Up                  |                                                                                 |
| <Up>              |   x   | v:count == 0 ? 'gk' : 'k' Up                  |                                                                                 |
| >                 |   v   |                                               |                                                                                 |
| a                 |   o   | Around textobject                             | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| a                 |   x   | Around textobject                             | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| a%                |   x   |                                               | <Plug>(MatchitVisualTextObject)                                                 |
| ai                |   o   | full scope                                    | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:780                             |
| ai                |   x   | full scope                                    | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:780                             |
| al                |   o   | Around last textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| al                |   x   | Around last textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| an                |   o   | Around next textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| an                |   x   | Around next textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| c                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| f                 |   n   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| F                 |   n   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| f                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| f                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| F                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| f                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| F                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| g                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| g[                |   n   | Move to left "around"                         | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1172                                     |
| g[                |   o   | Move to left "around"                         | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1172                                     |
| g[                |   x   | Move to left "around"                         | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1172                                     |
| g]                |   n   | Move to right "around"                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1173                                     |
| g]                |   o   | Move to right "around"                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1173                                     |
| g]                |   x   | Move to right "around"                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1173                                     |
| g%                |   n   |                                               | <Plug>(MatchitNormalBackward)                                                   |
| g%                |   o   |                                               | <Plug>(MatchitOperationBackward)                                                |
| g%                |   x   |                                               | <Plug>(MatchitVisualBackward)                                                   |
| gc                |   n   | Toggle comment                                | vim/_defaults.lua:133                                                           |
| gc                |   o   | Comment textobject                            | vim/_defaults.lua:143                                                           |
| gc                |   x   | Toggle comment                                | vim/_defaults.lua:133                                                           |
| gcc               |   n   | Toggle comment line                           | vim/_defaults.lua:138                                                           |
| gcO               |   n   | fxa<BS> Add Comment Above                     | O<Esc>Vcx<Esc><Cmd>normal gcc<CR>                                               |
| gco               |   n   | fxa<BS> Add Comment Below                     | o<Esc>Vcx<Esc><Cmd>normal gcc<CR>                                               |
| gx                |   n   | Opens filepath or URI under cursor            | vim/_defaults.lua:118                                                           |
| gx                |   x   | Opens filepath or URI under cursor            | vim/_defaults.lua:121                                                           |
| H                 |   n   | Prev Buffer                                   | <Cmd>BufferLineCyclePrev<CR>                                                    |
| i                 |   o   | Inside textobject                             | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| i                 |   x   | Inside textobject                             | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| ii                |   o   | inner scope                                   | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:780                             |
| ii                |   x   | inner scope                                   | nvim-data/lazy/snacks.nvim/lua/snacks/scope.lua:780                             |
| il                |   o   | Inside last textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| il                |   x   | Inside last textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| in                |   o   | Inside next textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| in                |   x   | Inside next textobject                        | nvim-data/lazy/mini.ai/lua/mini/ai.lua:1176                                     |
| j                 |   n   | v:count == 0 ? 'gj' : 'j' Down                |                                                                                 |
| j                 |   x   | v:count == 0 ? 'gj' : 'j' Down                |                                                                                 |
| k                 |   n   | v:count == 0 ? 'gk' : 'k' Up                  |                                                                                 |
| k                 |   x   | v:count == 0 ? 'gk' : 'k' Up                  |                                                                                 |
| keybinding        | mode  | description                                   | location                                                                        |
| l                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| L                 |   n   | Next Buffer                                   | <Cmd>BufferLineCycleNext<CR>                                                    |
| n                 |   n   | 'Nn'[v:searchforward].'zv' Next Search Result |                                                                                 |
| N                 |   n   | 'nN'[v:searchforward].'zv' Prev Search Result |                                                                                 |
| n                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| n                 |   o   | 'Nn'[v:searchforward] Next Search Result      |                                                                                 |
| N                 |   o   | 'nN'[v:searchforward] Prev Search Result      |                                                                                 |
| n                 |   x   | 'Nn'[v:searchforward] Next Search Result      |                                                                                 |
| N                 |   x   | 'nN'[v:searchforward] Prev Search Result      |                                                                                 |
| p                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| q                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| Q                 |   x   | <CR>' : 'Q' :help v_Q-default                 | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR>                            |
| r                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| r                 |   o   | Remote Flash                                  | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:40                        |
| R                 |   o   | Treesitter Search                             | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:41                        |
| R                 |   x   | Treesitter Search                             | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:41                        |
| s                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| s                 |   n   | Flash                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:38                        |
| S                 |   n   | Flash Treesitter                              | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:39                        |
| s                 |   o   | Flash                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:38                        |
| S                 |   o   | Flash Treesitter                              | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:39                        |
| s                 |   x   | Flash                                         | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:38                        |
| S                 |   x   | Flash Treesitter                              | nvim-data/lazy/LazyVim/lua/lazyvim/plugins/editor.lua:39                        |
| t                 |   n   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| T                 |   n   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| t                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| T                 |   o   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| t                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| T                 |   x   |                                               | nvim-data/lazy/flash.nvim/lua/flash/plugins/char.lua:118                        |
| x                 |   n   | Dashboard action                              | @nvim-data/lazy/snacks.nvim/lua/snacks/dashboard.lua:692                        |
| Y                 |   n   | :help Y-default                               | y$                                                                              |