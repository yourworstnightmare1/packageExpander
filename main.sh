echo "Initalizing packageExpander, please wait..."
echo "Loading ASCII art... (1/1)"
iconpackageExpander="                                                                                                                            
            ===================================            
         =========================================         
       =============================================       
      ===============================================      
      ======================   ======================      
      ==================           ==================      
     ================                 ================     
     =============                       -============     
     ===========*                         +===========     
     =========:====+                   +==== =========     
     =========    .====             +===.    =========     
     =========        ====+     =====        =========     
     =========           ====+====           =========     
     =========              ==+              =========     
     =========              +=+              =========     
     +++++++++              +++              +++++++++     
     +++++++++:             +++              +++++++++     
     ++++++++++             +++             ++++++++++     
     +++++++++++++          +++          =++++++++++++     
     ++++++++++++++++       +++       *+++++++++++++++     
      ++++++++++++++++++    +++    ++++++++++++++++++      
      +++++++++++++++++++++=+++-+++++++++++++++++++++      
      +++++++++++++++++++++++++++++++++++++++++++++++      
       +++++++++++++++++++++++++++++++++++++++++++++       
         +++++++++++++++++++++++++++++++++++++++++         
            +++++++++++++++++++++++++++++++++++                              
"
echo "Defining version info..."
version=1.0
build=2

clear
echo -e "\e[31m$iconpackageExpander\e[0m"
echo -e "\e[31m\nWelcome to packageExpander!\e[0m"
echo "Version $version | Build $build"

read -n 1 -p "\nPress any key to continue."
clear

echo "Enter the name of the package. It must be the exact filename."
read -p "Package filename: " pkgname
echo "Drag and drop or manually enter the directory of your package. The directory cannot exist yet, it must be created by packageExpander."
read -p "Directory: " pkgdir
echo "Drag and drop or manually enter the directory you want your app to be extracted to."
read -p "Directory: " appdir
clear

echo -e "\e[33m$pkgdir\e[0m"
echo -e "\e[33m$appdir\e[0m"
echo -e "These are the directories that will be used. Press any key to continue."
clear

echo "Expanding package..."
pkgutil --expand $pkgdir $appdir
echo "Extracting payload..."
tar -xvf $appdir/$pkgname/Resources/Payload -C $appdir/payload_rip
echo Completed extract
echo Completed! Go to $appdir/payload_rip to see your app.
read -n 1 -p "\nPress any key to exit."
exit