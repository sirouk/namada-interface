let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/heliax/namada-interface
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +46 apps/extension/src/background/keyring/service.ts
badd +409 apps/extension/src/background/keyring/keyring.ts
badd +8 apps/extension/package.json
badd +1 apps/extension/src/manifest/v3/_base.json
badd +18 apps/extension/src/background/offscreen/offscreen.ts
badd +85 apps/extension/webpack.config.js
badd +34 apps/extension/src/extension/ExtensionMessenger.ts
badd +21 apps/extension/src/extension/ExtensionRequester.ts
badd +46 apps/extension/src/extension/ExtensionRouter.ts
badd +20 apps/extension/src/background/web-workers/submit-transfer-web-worker.ts
badd +35 apps/extension/src/App/Login/Login.tsx
badd +30 apps/extension/src/extension/utils.ts
badd +113 apps/extension/src/background/keyring/handler.ts
badd +28 apps/extension/src/provider/Anoma.ts
badd +0 packages/storage/src/store/ExtensionKVStore.ts
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
tabnext
edit apps/extension/webpack.config.js
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
74
normal! zo
let s:l = 69 - ((33 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 69
normal! 08|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/package.json", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/package.json | else | edit ~/Projects/heliax/namada-interface/apps/extension/package.json | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/package.json
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/manifest/v3/_base.json", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/manifest/v3/_base.json | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/manifest/v3/_base.json | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/manifest/v3/_base.json
endif
balt ~/Projects/heliax/namada-interface/apps/extension/package.json
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 16 - ((15 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
lcd ~/Projects/heliax/namada-interface
wincmd w
wincmd =
tabnext
edit ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/keyring.ts
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/offscreen/utils.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
73
normal! zo
401
normal! zo
408
normal! zo
418
normal! zo
425
normal! zo
431
normal! zo
let s:l = 399 - ((23 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 399
normal! 022|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/background/offscreen/offscreen.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/background/offscreen/offscreen.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/background/offscreen/offscreen.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/background/offscreen/offscreen.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRequester.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
31
normal! zo
35
normal! zo
39
normal! zo
48
normal! zo
59
normal! zo
let s:l = 44 - ((6 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 44
normal! 027|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/packages/storage/src/store/ExtensionKVStore.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/packages/storage/src/store/ExtensionKVStore.ts | else | edit ~/Projects/heliax/namada-interface/packages/storage/src/store/ExtensionKVStore.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/packages/storage/src/store/ExtensionKVStore.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/web-workers/index.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/background/web-workers/submit-transfer-web-worker.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/background/web-workers/submit-transfer-web-worker.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/background/web-workers/submit-transfer-web-worker.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/background/web-workers/submit-transfer-web-worker.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/keyring.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
17
normal! zo
33
normal! zo
let s:l = 30 - ((29 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 30
normal! 025|
lcd ~/Projects/heliax/namada-interface
wincmd w
wincmd =
tabnext
edit ~/Projects/heliax/namada-interface/apps/extension/src/provider/Anoma.ts
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/messages.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
16
normal! zo
let s:l = 44 - ((15 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 44
normal! 039|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRequester.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRequester.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRequester.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRequester.ts
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
6
normal! zo
15
normal! zo
let s:l = 6 - ((4 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 033|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionMessenger.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionMessenger.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionMessenger.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionMessenger.ts
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
25
normal! zo
let s:l = 37 - ((18 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 37
normal! 028|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/extension/utils.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/extension/utils.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/extension/utils.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/extension/utils.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
let s:l = 10 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 021|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/index.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
12
normal! zo
21
normal! zo
let s:l = 36 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 36
normal! 013|
lcd ~/Projects/heliax/namada-interface
wincmd w
wincmd =
tabnext
edit ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/handler.ts
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/messages.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
22
normal! zo
23
normal! zo
113
normal! zo
let s:l = 113 - ((27 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 113
normal! 022|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/service.ts", ":p")) | buffer ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/service.ts | else | edit ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/service.ts | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/service.ts
endif
balt ~/Projects/heliax/namada-interface/apps/extension/src/background/keyring/handler.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
9
normal! zo
42
normal! zo
43
normal! zo
let s:l = 48 - ((22 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 08|
lcd ~/Projects/heliax/namada-interface
wincmd w
argglobal
enew
balt ~/Projects/heliax/namada-interface/apps/extension/src/extension/ExtensionRouter.ts
setlocal fdm=manual
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/Projects/heliax/namada-interface
wincmd w
wincmd =
tabnext
edit ~/Projects/heliax/namada-interface/apps/extension/src/App/Login/Login.tsx
argglobal
balt ~/Projects/heliax/namada-interface/packages/utils/src/helpers/index.ts
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 29 - ((27 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 067|
lcd ~/Projects/heliax/namada-interface
tabnext 6
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
