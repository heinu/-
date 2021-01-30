require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "andlua"
--activity.setTheme(R.Theme_Blue)
--activity.setTitle("MyApp3")
activity.setContentView(loadlayout(layout))
os.execute("su")
loadfile(activity.getLuaDir().."/ui.lua")()
data=activity.getLuaDir()--获取当前执行路径 
路径=data:gsub("/com.heinu.youke/files","/com.tencent.ig/")
print("当前国际数据文件目录:"..路径)
--print(os.time())
内容=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="random"></string>
    <string name="install">625c2ed1-a75e-数字-9e5c-0abb9b3cfa55</string>
    <string name="uuid">字符</string>
</map>
]]
内容=内容:gsub("数字",math.random(1000,9999))
内容=内容:gsub("字符","e7b73398ee"..math.random(100000000,999999999).."b4d9356787f5f")
function 开始.onClick()
  写入文件("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json",'{"LastRegisterTime":'..os.time()..',"JKGuestRegisterCnt":0}}')
os.execute("rm-rf "..路径.."*.xml")
os.execute("echo "..内容..">"..路径.."device_id.xml")
print("成功")
end