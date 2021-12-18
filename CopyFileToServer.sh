cd /home/harato/SQLBackups

file=$(ls -Art | tail -1)

rsync --chmod=666 $file secondary@10.0.2.4:/home/secondary/SQLBackups/
