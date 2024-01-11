# DJP Script

Script to fetch url and other details for Diksga and youtube content.

## About this script
This script is written for reading a input csv file line by line and based on the certian criteria (whethere it is Diksha or youtube content), 
 - Fetch the records form Diksha and populate url specific data into output csv file.
 - Identify the youtube id and populate the data into output file.

### Sample csv file
	In the sample-csv folder there are two files: input-file.csv and output-file.csv. Refer these files for details.
	
	For Diksha content thumbnail, description, mimetype, url and media specific detaisl are populated. Remaining data are populated form input-file only.

	For youtube content, id can be fetch from a specifci forlmula (give below) and populated into column number: C (identifier).
	=IF(ISNUMBER(SEARCH("v=", B3)), MID(B3, SEARCH("v=", B3)+2, 11), IF(ISNUMBER(FIND(".be/", B3)), MID(B3, FIND(".be/", B3)+4, 11), IF(ISNUMBER(FIND("/shorts/", B3)), MID(B3, FIND("/shorts/", B3)+LEN("/shorts/"), 11), IF(ISNUMBER(FIND("youtu.be/", B3)), MID(B3, FIND("youtu.be/", B3)+LEN("youtu.be/"), 11), ""))))
	Youtube contents data are populated from the input-file only. 

### Command to execute:
	- Go to the script root folder.
	For building the script:
		mvn clean install

	For executing: 
		mvn exec:java -Dexec.mainClass="com.script.djp.script_djp.App" -Dexec.args="<local path for input-file.csv> <local path for output-file.csv>"

		mvn exec:java -Dexec.mainClass="com.script.djp.script_djp.App" -Dexec.args="/Users/Documents/input-fiel.csv /Users/Documents/output-fiel.csv"
