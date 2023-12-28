nnoremap <S-J> <C-d>
nnoremap <S-K> <C-u>
nnoremap <S-H> <Cmd>Tabprevious<CR> 
nnoremap <S-L> <Cmd>Tabnext<CR> 

" window navigation
" https://github.com/vscode-neovim/vscode-neovim/blob/master/vim/vscode-window-commands.vim
nnoremap <C-w><C-j> <Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <C-w><C-j> <Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <C-w><C-k> <Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <C-w><C-k> <Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <C-w><C-h> <Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <C-w><C-h> <Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <C-w><C-l> <Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <C-w><C-l> <Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <C-w><Down> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
xnoremap <C-w><Down> <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
nnoremap <C-w><Up> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
xnoremap <C-w><Up> <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
nnoremap <C-w><Left> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
xnoremap <C-w><Left> <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
nnoremap <C-w><Right> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>
xnoremap <C-w><Right> <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>
