termux: ssh-keygen -t ed25519 -C "zachrrodgers@gmail.com" -- find the key in .pub  
github settings SSH and GPG keys  
git config --global user.name "Owlum"
git config --global user.email "zachrrodgers@gmail.com"
Commands: status (What changed), add . (put changes in a box), commit -m "message" (changes set in stone), git push (send to hub)  
branch (list all branches), git checkout -b branch-name (creates and puts you in the new branch), git checkout main (back to the trunk)  
git merge branch-name (merges all the branch work into the main code), git pull (grabs from the cloud), git stash ( you're code on hold),
git stash pop (code on hold no more)  
The order: Pull, Branch, Status, Add, Commit, Main, Merge, Push (Stash when work is unfinished)  
nvim :e ~/.config/nvim/init.lua (configuration file)  
i (insert mode), hjkl (wasd nvim style), :w (save), :wq (save and quit), :q! (quit no save) :q (quit)
lua: vim.opt.number = true (line numbers), vim.opt.relativenumber = true (helps jump lines), vim.opt.mouse = 'a' (touch enable)  
vim.opt.smartindent = true (for sql and python), vim.opt.shiftwidth = 4 (tab idention)  
nvim +Tutor (nvim tutorial)  
colab: github/settings/devsettings/tokens !git clone https://{token}@github.com/{username}/{reponame}.git  
"!" is for terminal commands !apt install postgresql  
mount drive for db keeping.  
postgresql+termux: [start/stop server] pg_ctl -D $PREFIX/var/lib/postgresql start/stop, [logon to postgre prompt] psql postgres, [specific db & specific user] psql -U username -d database_name, [slash commands in psql prompt] \l list all databases on server, \c database_name connect/switch databases, \conninfo show current uset and database, \dt list tables, \d list all, \d table_name show table metainfo, \du list all database users and perms, \x make view vertical, \timing toggles exe stopwatch for quiers, \i filename.sql import and execute extetnal sql file, \? common help command, \h COMMAND sytanx help, \q quit back to termux, [backup and move data] pg_dump -U username -d database_name > file_name.sql, psql -U cloud_user -d new_database < file_name.sql, 
