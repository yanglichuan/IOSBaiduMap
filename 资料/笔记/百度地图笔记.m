百度地图API 最新版本是v2.5.0

注:静态库中采用ObjectC++实现，因此需要您保证您工程中至少有一个.mm后缀的源文件


1> 如果在导入第三方框架时，发现提示"std::"提示错误，说明框架使用了C++
解决办法，随便把项目中的一个文件，扩展名.mm

.m		c语言&OC混编
.mm	c++语言&OC混编
.c		纯C语言
.cpp	纯C++

2> 百度地图api的特点，代理方法，通常以onXXX，表示发生了什么事件时。。。

3> 关于error的数字
	0	表示正确
	其他数字，表示错误代码

4> 自2.0.0起，BMKMapView新增viewWillAppear、viewWillDisappear方法来控制BMKMapView的生命周期，并且在一个时刻只能有一个BMKMapView接受回调消息
	因此在使用BMKMapView的viewController中需要在viewWillAppear、viewWillDisappear方法中调用BMKMapView的对应的方法，并处理delegate，代码如下

5> POI检索：周边检索、区域检索和城市内检索
	苹果原生地图框架不支持的功能




