call CopyDllsToAppDir_Release.bat
call Build_Release.bat

cd ..

mkdir distro

robocopy app/ distro/ *.dll
robocopy app/ distro/ Intrinsic.exe
robocopy app/ distro/ IntrinsicEd.exe
robocopy app/ distro/ settings.json
robocopy app/managers/ distro/managers /E
robocopy app/media/ distro/media /E
robocopy app/scripts distro/scripts /E
robocopy app/tools distro/tools /E
robocopy app/worlds distro/worlds /E

timeout 2