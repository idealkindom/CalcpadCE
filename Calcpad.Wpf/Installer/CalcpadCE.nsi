!include "MUI2.nsh"
!include "FileFunc.nsh"

;--------------------------------
; General

!define APP_NAME "Calcpad"
!ifndef APP_VERSION
  !define APP_VERSION "dev"
!endif
!define APP_PUBLISHER "CalcpadCE Community"
!define APP_URL "https://calcpad-ce.org/"
!define APP_EXE "Calcpad.exe"
!define PUBLISH_DIR "..\bin\Release\net10.0-windows\win-x64\publish"

Name "${APP_NAME} ${APP_VERSION}"
OutFile "Output\CalcpadCE-setup-${APP_VERSION}.exe"
InstallDir "$LOCALAPPDATA\Programs\${APP_NAME}"
InstallDirRegKey HKCU "Software\${APP_NAME}" "InstallPath"
RequestExecutionLevel user
SetCompressor /SOLID lzma
Unicode True
ManifestDPIAware System

;--------------------------------
; Interface Settings

!define MUI_ICON "..\resources\calcpad.ico"
!define MUI_UNICON "..\resources\calcpad.ico"
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_RUN "$INSTDIR\${APP_EXE}"
!define MUI_FINISHPAGE_RUN_TEXT "Launch ${APP_NAME}"

;--------------------------------
; Pages

!insertmacro MUI_PAGE_LICENSE "..\..\LICENSE"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

;--------------------------------
; Language

!insertmacro MUI_LANGUAGE "English"

;--------------------------------
; Install Section

Section "Install"
  SetOutPath "$INSTDIR"
  File /r "${PUBLISH_DIR}\*.*"

  ; Create Start Menu shortcuts
  CreateDirectory "$SMPROGRAMS\${APP_NAME}"
  CreateShortCut "$SMPROGRAMS\${APP_NAME}\${APP_NAME}.lnk" "$INSTDIR\${APP_EXE}" "" "$INSTDIR\${APP_EXE}" 0
  CreateShortCut "$SMPROGRAMS\${APP_NAME}\Uninstall ${APP_NAME}.lnk" "$INSTDIR\Uninstall.exe"

  ; Create Desktop shortcut
  CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${APP_EXE}" "" "$INSTDIR\${APP_EXE}" 0

  ; .cpd file association
  WriteRegStr HKCU "Software\Classes\.cpd" "" "Calcpad.CpdFile"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdFile" "" "Calcpad Document"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdFile\DefaultIcon" "" "$INSTDIR\${APP_EXE},0"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdFile\shell\open\command" "" '"$INSTDIR\${APP_EXE}" "%1"'

  ; .cpdz file association
  WriteRegStr HKCU "Software\Classes\.cpdz" "" "Calcpad.CpdzFile"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdzFile" "" "Calcpad Protected Document"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdzFile\DefaultIcon" "" "$INSTDIR\${APP_EXE},0"
  WriteRegStr HKCU "Software\Classes\Calcpad.CpdzFile\shell\open\command" "" '"$INSTDIR\${APP_EXE}" "%1"'

  ; Notify shell of association changes
  System::Call 'shell32::SHChangeNotify(i 0x08000000, i 0, p 0, p 0)'

  ; Write install path to registry
  WriteRegStr HKCU "Software\${APP_NAME}" "InstallPath" "$INSTDIR"
  WriteRegStr HKCU "Software\${APP_NAME}" "Version" "${APP_VERSION}"

  ; Write uninstall information
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "DisplayName" "${APP_NAME}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "DisplayVersion" "${APP_VERSION}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "Publisher" "${APP_PUBLISHER}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "DisplayIcon" "$INSTDIR\${APP_EXE}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "UninstallString" '"$INSTDIR\Uninstall.exe"'
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "URLInfoAbout" "${APP_URL}"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "URLUpdateInfo" "https://github.com/imartincei/CalcpadCE"
  WriteRegDWORD HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "NoModify" 1
  WriteRegDWORD HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "NoRepair" 1

  ; Estimate installed size (KB)
  ${GetSize} "$INSTDIR" "/S=0K" $0 $1 $2
  IntFmt $0 "0x%08X" $0
  WriteRegDWORD HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}" "EstimatedSize" $0
SectionEnd

;--------------------------------
; Uninstall Section

Section "Uninstall"
  ; Remove files and directories
  RMDir /r "$INSTDIR"

  ; Remove Start Menu shortcuts
  RMDir /r "$SMPROGRAMS\${APP_NAME}"

  ; Remove Desktop shortcut
  Delete "$DESKTOP\${APP_NAME}.lnk"

  ; Remove file associations
  DeleteRegKey HKCU "Software\Classes\.cpd"
  DeleteRegKey HKCU "Software\Classes\Calcpad.CpdFile"
  DeleteRegKey HKCU "Software\Classes\.cpdz"
  DeleteRegKey HKCU "Software\Classes\Calcpad.CpdzFile"

  ; Notify shell of association changes
  System::Call 'shell32::SHChangeNotify(i 0x08000000, i 0, p 0, p 0)'

  ; Remove registry entries
  DeleteRegKey HKCU "Software\${APP_NAME}"
  DeleteRegKey HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"
SectionEnd
