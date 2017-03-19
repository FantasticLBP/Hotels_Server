# Hotels_Server
住哪儿项目后台管理系统


**住哪儿App的后台管理功能，包括主题酒店、特色酒店发布、注册用户的统计查看、订单的统计查看、酒店的统计查看。Controller目录下的Api下就是给App开发的api。想写api的童鞋们可以看看。**
<ul>包括php系统开发的常见功能：
<li>复杂表单的提交，包括多图片上传</li>
<li>基于Bootstrap框架的界面布局</li>
<li>封装PDO数据库操作类，实现增删改查等等常见功能，调用简单</li>
<li>封装了Response类，可以传递4个参数 show($code, $message = '', $data = array(), $type = self::JSON)来展示json或者array或者xml。</li>
<li>工程结构一幕了然，便于拓展</li>
</ul>


<h3>效果截图</h3>

![系统截图](https://github.com/FantasticLBP/Hotels_Server/blob/master/Systemt_Screen1.png?raw=true "这是系统截图")

<p>ToDo：后期可能会实现MVC框架优化。客户端接口想实现缓存出来，当客户端请求的数据存在于缓存的时候直接从缓存中读取。</p>

如果有不懂的地方可以加入QQ交流群讨论：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=c9dc4ab0b2062e0004b3b2ed556da1ce898631742e15780297feb3465ad08eda">**515066271**</a>。这个QQ群讨论技术范围包括：iOS、H5混合开发、前端开发、PHP开发，欢迎大家讨论技术。
