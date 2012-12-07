/*
 * Installation Program for Jasmine
 *
 * [HISTORY]
 * Revision 1 (04.Aug.2000)
 * > Renewal
 * Revision 2 (18.Jan.2001)
 * > Fix problem.
 * Revision 3 (20.Jul.2003)
 * > Fix problem.
 *
 *
 */
rc = RxFuncAdd( "SysLoadFuncs", "RexxUtil", "SysLoadFuncs")
rc = sysloadfuncs()

DIR = directory()

APL_FOLDER_NAME = "Jasmine"
APL_FOLDER_ID   = "<JASMINE_FOLDER>"

APL_EXE_NAME = "Jasmine"
APL_EXE_FILE = DIR"\JASMINE.EXE"
APL_EXE_ID   = "<JASMINE>"

README_E_FILE = DIR"\readme_e.htm"
README_E_NAME = "Readme English"

README_J_FILE = DIR"\readme_j.htm"
README_J_NAME = "Readme Japanese"


say ""
say " Install Jasmine..."
say ""

/* Create Folders */
/* 1. Pretty Pop Software Main Folder */
if SysCreateObject( 'WPFolder', 'Pretty Pop Software', '<WP_DESKTOP>', "OBJECTID=<PRETTY_POP_SOFTWARE>", "u" ) then do
    say ' Create Folder : Pretty Pop Software'
end

/* 2. Application Folder */
if SysCreateObject( 'WPFolder', APL_FOLDER_NAME, '<PRETTY_POP_SOFTWARE>', "OBJECTID="APL_FOLDER_ID, "u" ) then do
    say " Create Folder : "APL_FOLDER_NAME
end

/* Create Objects */
parameter = "EXENAME="APL_EXE_FILE";STARTUPDIR="directory()";OBJECTID="APL_EXE_ID
if SysCreateObject('WPProgram', APL_EXE_NAME, APL_FOLDER_ID, parameter, 'u') then do
    say " Create Object : "APL_EXE_NAME
end

if SysCreateShadow(APL_EXE_ID, "<WP_DESKTOP>") then do
    say " Create Object : "APL_EXE_NAME
end

if SysCreateObject( 'WPUrl', README_J_NAME, APL_FOLDER_ID, 'URL=file:///'README_J_FILE, "u" ) then do
    say " Create Object : "README_J_NAME
end

if SysCreateObject( 'WPUrl', README_E_NAME, APL_FOLDER_ID, 'URL=file:///'README_E_FILE, "u" ) then do
    say " Create Object : "README_E_NAME
end

say ""
say " Jasmine installation was successfully completed."
say ""
say " Jasmine�̃C���X�g�[���͖����ɏI�����܂����B"
say ""
