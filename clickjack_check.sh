#! /bin/bash
red=$`tput setaf 1`
green=$`tput setaf 2`
blue=$`tput setaf 4`
reset=$`tput sgr0`
greetings()
{
echo "Hello There `tput setaf 1` $USER .. `tput sgr0` , Thank you for using the `tput setaf 4` Clickjacking Checker `tput sgr0` by `tput setaf 6` Variares `tput sgr0` "
echo "Copy the url you want to test and paste it below or manually type it."
echo "Please make sure to add `tput setaf 3` http:// `tput sgr0` or `tput setaf 3`https:// `tput sgr0` before the line. "
echo "eg : https://www.example.com"
echo " `tput setaf 2` ================================================================================== `tput sgr0` "
}
collection()
{
read -p " `tput setaf 5` Enter the url: `tput sgr0` " dom
}
checking()
{
cat <<- htm > check.html
<!DOCTYPE html>
<body>
<h1> <b> Clickjacking Checker by Variares </h1> </b>
<iframe src="$dom" width="300" height="300"> </iframe>
<p> <b> If you can see the webpage inside the box, it means this page is vulenrable to Clickjacking. </b> <p>
<p> <b> If you see any errors, it means this site is not vulnerable to clickjacking. </b> <p>
<P> Thank you for using Clickjacking Checker :)  <p>
</body>
</html>
htm
}
finalising()
{
firefox check.html
}
greetings
collection
checking
finalising