
" Added by oh-my-vim

" Change the default leader
" let mapleader = ","

" Skip upgrade of oh-my-vim itself during upgrades
" let g:ohmyvim_skip_upgrade=1

" Use :OhMyVim profiles to list all available profiles with a description
" let profiles = ['defaults', 'django', 'erl', 'friendpaste', 'git', 'makefile', 'map', 'pyramid', 'python', 'ranger', 'tmpl', 'utf8']
let profiles = ['defaults']

" Path to oh-my-vim binary (take care of it if you are using a virtualenv)
let g:ohmyvim="oh-my-vim"

" load oh-my-vim
source /home/andrew/.vim/ohmyvim/ohmyvim.vim

" End of oh-my-vim required stuff

" Put your custom stuff bellow
map <F2> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

" Tag bar
nmap <F8> :TagbarToggle<CR>

" Normal Mode时用tab, shift-tab做缩进
nmap <tab> v>
nmap <s-tab> v<
" Visual Mode时用tab, shift-tab做缩进
vmap <tab> v>
vmap <s-tab> v<
"以缩进作为代码折叠规则（还可以选manual）
set foldmethod=indent

set tabstop=2
set shiftwidth=2
set softtabstop=2
function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction
                             
command! ClearRegisters call ClearRegisters()
