cd /home/secondary/SQLBackups

file=$(ls -Art | tail -1)

mv $file /home/secondary/SQLBackups/Archive
