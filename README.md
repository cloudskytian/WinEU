# WinEU
A tool that sets the Windows region to the EU region.
# About
Due to the Digital Markets Act (DMA), Microsoft allows Windows in the European Economic Area (EEA) to uninstall non-essential pre-installed applications. However, the region flag for this feature can only be set during installation of the Windows. Some people found that this could be achieved by modifying the registry, but Microsoft implemented the Windows UserChoice Protection Driver (UCPD) in a patch in 2024 Q1, and it makes the registry method ineffective. Fortunately, some people have analyzed this driver and found a way to bypass UCPD. VMWare also provided a solution to bypass UCPD to fix a conflict issue. The solution I am using here is provided by VMWare. Running it can set the Windows region to the EEA region (I chose Luxembourg, but of course, you can choose the country or region you need). 

The sources of UCPD-fix.cmd and vmware-dem-fta-stub.dll are: 

https://knowledge.broadcom.com/external/article?legacyId=97169

Thanks to: 

https://hitco.at/blog/windows-userchoice-protection-driver-ucpd/

https://kolbi.cz/blog/2024/04/03/userchoice-protection-driver-ucpd-sys/

# WinEU
一个将Windows地区设置为欧盟地区的小工具
# 关于
因《数字市场法案》（DMA），微软允许欧洲经济区（EEA）地区的 Windows 卸载非必要系统预装应用。然而，适用此功能的地区标记只有在安装Windows时设置才会生效。有人发现可以通过修改注册表达到该效果，然而，微软在2024年第一季度的某个补丁中实装了 Windows UserChoice Protection Driver (UCPD) 使注册表的方式失效。幸好，一些人解析了该驱动并找到了绕过的 UCPD 方式，VMWare 也为了修补一个冲突问题为此提供了一个绕过 UCPD 的方案。我这里使用的即是 VMWare 提供的方案，运行即可将 Windows 的地区设置为 EEA 地区（我选择了卢森堡，当然，你也可以选择自己需要的国家或地区）。

UCPD-fix.cmd 和 vmware-dem-fta-stub.dll 来源：

https://knowledge.broadcom.com/external/article?legacyId=97169

感谢：

https://kolbi.cz/blog/2024/04/03/userchoice-protection-driver-ucpd-sys/

https://hitco.at/blog/windows-userchoice-protection-driver-ucpd/
