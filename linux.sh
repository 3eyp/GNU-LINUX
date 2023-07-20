
#!/bin/bash



#Linux Centos7 Bash script
#Author: Eyüp ESER
#Date: 2023/05/21  2:51 PM
#Purpose: Script to create file with bash script


function test1()
{
        read -p "file name: " fileName
        for s in $( ls ); do


                if [[ $fileName = $s ]];
                then
                        echo
                        ls -al | grep $fileName
                        echo file name already exist!
                        echo
                        file_
                        break
                fi

        done
        touch $fileName
        echo
        ls -la | grep $fileName
        echo file creation successfull
        echo
        exit 0

}



function file_()
{

        while true
        do
                echo
                read -p "Enter new file name y/n: " files
                if [[ $files = "y" || $files = "Y" ]];
                then
                        test1
                elif [[ $files = "n" || $files = "N" ]];
                then
                        exit 0


                fi
        done
}



for i in $( ls ); do
while true
do

        if [[ $1 = $i ]];
        then
                echo
                ls -la | grep  $1
                echo file name already exists!
                file_
        else
                touch $1
                break
        fi

done
done
echo
ls -la | grep $1
echo file creation successfull
echo
