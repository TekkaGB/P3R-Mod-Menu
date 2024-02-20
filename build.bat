::Replace with path to local uasset supported AtlusScriptCompiler.exe
set COMPILER="D:\Modding\Persona\AtlusScriptToolchain\AtlusScriptCompiler.exe"
set RELOADED="D:\Reloaded II\Reloaded-II.exe"
set GAME="D:\SteamLibrary\steamapps\common\P3R\P3R\Binaries\Win64\P3R.exe"

::Compile bmd uassets for every localized language
for /d %%i in (.\UnrealEssentials\P3R\Content\L10N\*) do (
    %COMPILER% .\bmd\BMD_FldSupport_AutoRecover.msg -Compile -OutFormat V1RE -Library P3RE -Encoding UTF-8  -Hook -SumBits -UPatch %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover.uasset -Out %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new
    if exist %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new.uasset (
        move /y %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new.uasset %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover.uasset
        del /s /q %%i\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new
    )
    %COMPILER% .\bmd\BMD_FldUtility.msg -Compile -OutFormat V1RE -Library P3RE -Encoding UTF-8  -Hook -SumBits -UPatch %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility.uasset -Out %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new
    if exist %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new.uasset (
        move /y %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new.uasset %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility.uasset
        del /s /q %%i\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new
    )
)
:: Compile Japanese bmd uassets
%COMPILER% .\bmd\BMD_FldSupport_AutoRecover.msg -Compile -OutFormat V1RE -Library P3RE -Encoding UTF-8  -Hook -SumBits -UPatch .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover.uasset -Out .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new
if exist .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new.uasset (
    move /y .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new.uasset .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover.uasset
    del /s /q .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BMD_FldSupport_AutoRecover_new
)
%COMPILER% .\bmd\BMD_FldUtility.msg -Compile -OutFormat V1RE -Library P3RE -Encoding UTF-8  -Hook -SumBits -UPatch .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility.uasset -Out .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new
if exist .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new.uasset (
    move /y .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new.uasset .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility.uasset
    del /s /q .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BMD_FldUtility_new
)

::Compile bf uassets
%COMPILER% .\bf\BF_FldUtility.flow -Compile -OutFormat V4BE -Library P3RE -Encoding UTF-8 -Hook -SumBits -UPatch .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility.uasset -Out .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility_new
if exist .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility_new.uasset (
    move /y .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility_new.uasset .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility.uasset
    del /s /q .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\FldUtility\BF_FldUtility_new
)
%COMPILER% .\bf\BF_FldSupport_AutoRecover.flow -Compile -OutFormat V4BE -Library P3RE -Encoding UTF-8 -Hook -SumBits -UPatch .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover.uasset -Out .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover_new
if exist .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover_new.uasset (
    move /y .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover_new.uasset .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover.uasset
    del /s /q .\UnrealEssentials\P3R\Content\Xrd777\Field\Data\DataAsset\Bf\Dungeon\SupportTalk\BF_FldSupport_AutoRecover_new
)
%COMPILER% .\bf\BF_P3HDscheduler_04.flow -Compile -OutFormat V4BE -Library P3RE -Encoding UTF-8 -Hook -SumBits -UPatch .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04.uasset -Out .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04_new
if exist .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04_new.uasset (
    move /y .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04_new.uasset .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04.uasset
    del /s /q .\UnrealEssentials\P3R\Content\Xrd777\Schedule\Data\DataAsset\Bf\BF_P3HDscheduler_04_new
)

del /s /q .\AtlusScriptCompiler.log

::Launch game
%RELOADED% --launch %GAME%