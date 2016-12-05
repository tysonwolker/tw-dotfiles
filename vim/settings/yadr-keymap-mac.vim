" ==== NERD tree
" Cmd-Shift-N for nerd tree
map <leader>n :NERDTreeToggle<CR>

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> <leader>j }
nnoremap <silent> <leader>k {
autocmd FileType javascript map <buffer> <leader>k }
autocmd FileType javascript map <buffer> <leader>j {

" Toggle comments
map <silent> <leader>d :TComment<CR>

" Use numbers to pick the tab you want (like iTerm)
map <silent> <leader>1 :tabn 1<cr>
map <silent> <leader>2 :tabn 2<cr>
map <silent> <leader>3 :tabn 3<cr>
map <silent> <leader>4 :tabn 4<cr>
map <silent> <leader>5 :tabn 5<cr>
map <silent> <leader>6 :tabn 6<cr>
map <silent> <leader>7 :tabn 7<cr>
map <silent> <leader>8 :tabn 8<cr>
map <silent> <leader>9 :tabn 9<cr>

" Replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

" Open the error console
map <leader>cc :botright cope<CR>
" Move to next error
map <leader>] :cn<CR>
" Move to the prev error
map <leader>[ :cp<CR>

" --- move around splits {
" move to and maximize the below split
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }

" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv


" TODO: FIX BELOW STILL MACVIM KEYBINDINGS
" Resize windows with arrow keys
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>

" ============================
" Tabularize - alignment
" ============================
" Hit Cmd-Shift-A then type a character you want to align by
nmap <D-A> :Tabularize /
vmap <D-A> :Tabularize /

" Source current file Cmd-% (good for vim development)
map <D-%> :so %<CR>
