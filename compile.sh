# Copy to the rom folder and in terminal type 
# . compile.sh
#
# 1 - Remove the output zip file and compile
# 2 - Remove the output folder of athene
# 3 - Remove entire output folder
#
# Output folder - ~/arrow/out

compile () {
    . build/envsetup.sh
    lunch arrow_athene-userdebug
    printf "\n\n\tEnter Threads: "
    read threads
    clear
    mka bacon -j$threads
}

printf "\n"
printf "1. Light Compile \n"
printf "2. Hard Compile \n"
printf "3. Clean Compile \n\n"
printf "Enter choice: "
read choice
if [ $choice == 1 ]
then
    rm -rf out/target/product/athene/*athene*.*
    compile
elif [ $choice == 2 ]
then
    rm -rf out/target/product/athene
    compile
elif [ $choice == 3 ]
then
    make clean
    compile
fi
