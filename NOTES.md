**termux:** ssh-keygen -t ed25519 -C "zachrrodgers@gmail.com" -- find the key in .pub  
github settings SSH and GPG keys  
git config --global user.name "Owlum"
git config --global user.email "zachrrodgers@gmail.com"
## Git Commands: 
**status** Shows what changed  
**add .** Stage changes for commit  
**commit -m "message"** Submit changes to git  
**git push** send changes to GitHub  
**branch** list all branches  
**git checkout -b branch-name** Creates and puts you in the new branch  
**git checkout main** Puts you back to the main branch  
**git merge branch-name** merges all the branch work into the main code  
**git pull** grabs files and folders from GitHub**git stash** you're code on hold  
**git stash pop** code on hold no more  
## The Command Order:
Pull, Branch, Status, Add, Commit, Main, Merge, Push (Stash when work is unfinished)  
## NeoVim Tips:
**nvim :e ~/.config/nvim/init.lua** configuration file  
**i** insert mode  
**hjkl** wasd nvim style  
**:w** save  
**:wq** save and quit  
**:q!** quit no save  
**:q** quit  
**nvim +Tutor** nvim tutorial  
## PostgreSQL in Termux: 
**start/stop server:** pg_ctl -D $PREFIX/var/lib/postgresql start/stop  
**logon to postgre prompt** psql postgres  
**specific db & specific user** psql -U username -d database_name  
## Slash Commands in psql prompt:
**\l** list all databases on server  
**\c database_name** connect/switch databases  
**\conninfo** show current user and database  
**\dt** list tables  
**\d** list all  
**\d table_name** show table metainfo  
**\du** list all database users and perms  
**\x** make view vertical  
**\timing** toggles exe stopwatch for quiers  
**\i filename.sql** import and execute extetnal sql file  
**\?** common help command  
**\h COMMAND** sytanx help  
**\q** quit back to termux  
## Backup and Move Data:
**Create Dump File** pg_dump -U username -d database_name > file_name.sql  
**Load External File** psql -U cloud_user -d new_database < file_name.sql, 
