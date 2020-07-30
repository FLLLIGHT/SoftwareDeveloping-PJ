>项目部署地址：http://129.211.41.182:8080/SoftwareDeveloping_PJ_war_exploded/ 
>项目github仓库地址：https://github.com/FLLLIGHT/SoftwareDeveloping-PJ 
宣子涛 18302010015 

# 一、项目功能完成情况概述 


1. 基础部分：全部功能。 
2. Bonus部分：项目说明文档、详情页面图片局部放大功能、注册与登录验证码功能、用户评论图片功能、云部署。 
# 二、项目需求规划 

尽管TA在项目文档中已经对项目的需求和功能点进行了详尽且清晰的描述，但出于项目开发过程完整性的考量，我使用页面流图、用况图和功能清单图三个不同的角度和方式，对项目的需求进行了进一步地拆分、细化和整理，从而使得我对开发的内容和业务流程更加清晰，使得后续开发更加便捷。 

## 2.1 页面流图 

页面流图以每一个页面为基本单位，对业务流程进行总体性的描述，为开发构建出了一个大致的框架。基于本项目的需求和功能点，本项目大体上可以分为如下图所示的10个页面，页面直接的跳转流构成了整个业务的流程和框架。 

![图片](https://uploader.shimo.im/f/6KBGXwfhucUBRBQX.png!thumbnail)

图2-1：页面流图 

## 2.2 用况图 

用况图基于用户和功能之间的对应关系，将用户进行划分，并将某类用户和某些功能联系起来，为项目的功能权限管理系统构建起一个大致的框架。同时，用况图也从另一个形式对网站所要完成的全部功能进行了罗列和概述。 

在本项目中，典型用户可以分为注册用户、非注册用户（游客）和网站管理员三类，其中注册用户又可以根据用户画像进一步细分为旅游图片博主和普通用户两类。上述几类用户及他们所能使用和需要使用的本网站的功能的对应关系如下图所示。 

![图片](https://uploader.shimo.im/f/ItTsV9PieDxHaVr4.png!thumbnail)

图2-2：用况图 

## 2.3 功能清单图 

功能清单图以思维导图的形式对各个页面及其涉及的具体功能点进行了细致的罗列和描述，是项目文档的另一种更加直观化的呈现形式。通过功能清单图，我可以更加快捷和直观地了解项目所需要实现的各个页面和功能点，为后续项目开发的顺利进行奠定了基础。本项目的功能清单图如下所示。 

![图片](https://uploader.shimo.im/f/1qAZgpoc1LNrG4vL.png!thumbnail)

图2-3：功能清单图 

# 三、项目开发过程与版本管理 

本项目使用git进行版本管理，并开设github代码仓库用于存放代码。自开设github代码仓库至项目开发结束，总计commit次数为40次，每次提交时都对该次提交所实现的功能进行了详尽细致的描述，便于出现bug时的版本回滚和追根溯源，减少了项目开发的后顾之忧。 

![图片](https://uploader.shimo.im/f/dMfBsV2DlHqO5TYi.png!thumbnail)

图3-1：github代码仓库 

![图片](https://uploader.shimo.im/f/ODMUpuogE3rtqNzf.png!thumbnail)

图3-2：使用git进行版本管理的提交情况 

![图片](https://uploader.shimo.im/f/Lh50pLszLMJL3hZq.png!thumbnail)

图3-3：使用git进行版本管理的提交网络示意图 

# 四、项目页面与使用说明 

## 4.1 全站导航栏 

![图片](https://uploader.shimo.im/f/JYQqdJdjyeuxgZJ4.png!thumbnail)

图4-1：全站导航栏（登录前） 

![图片](https://uploader.shimo.im/f/JhzIu3Ov8FR5SQEo.png!thumbnail)

图4-2：全站导航栏（登录后） 

使用说明： 


* 该全站导航栏出现在本网站的所有页面上方，且固定在页面上方，不会随滚轮向下而消失。 
* 导航栏左侧为网站Logo，点击该Logo可跳转至首页。 
* 在未登录前，用户可通过导航栏跳转至首页、搜索页、登录页和注册页。 
* 在登录后，用户可通过导航栏跳转至首页、搜索页、收藏页、上传图片页、个人信息页和好友页，并可以使用登出功能。 
## 4.2 首页 

![图片](https://uploader.shimo.im/f/hXHbXpDLtVWfzMh6.png!thumbnail)

图4-3：首页（上方） 

![图片](https://uploader.shimo.im/f/pUCRY13UQYYrJ6VG.png!thumbnail)

图4-4：首页（下方） 

使用说明： 

* 首页上方轮播展示了最热的三张旅游图片，每隔8秒自动滚动，用户点击Detail按钮可进入对应的图片详情页。 
* 首页下方展示了最新上传的三张旅游图片，用户点击图片或图片标题可进入对应的图片详情页。 
## 4.3 注册页 

![图片](https://uploader.shimo.im/f/tkoEvmLgqcJE8vKi.png!thumbnail)

图4-5：注册页 

使用说明： 

* 用户可以在此页面进行用户注册，用户名、密码和邮箱等需遵循相应格式规范，否则表单不予提交。 
* 用户提交表单时需输入验证码，通过人机验证，否则不予注册。 
## 4.4 登录页 

![图片](https://uploader.shimo.im/f/v3ERXoCxCgnqR73Q.png!thumbnail)

图4-6：登录页 

使用说明： 

* 用户可以在此页面进行用户登录。 
* 用户提交表单时需输入验证码，通过人机验证，否则不予登录。 
## 4.5 上传图片页 

![图片](https://uploader.shimo.im/f/syXciN8k3ElexG9W.png!thumbnail)

图4-7：上传图片页 

使用说明： 

* 用户可以在此页面上传图片，相应信息均需填写完整，否则不予上传。 
* 用户仅能选取图片格式的文件，选取图片后，相应图片会在页面下方给出预览。 
## 4.6 图片详情页 

![图片](https://uploader.shimo.im/f/nKUlHI7Wm50bRafT.png!thumbnail)

图4-8：图片详情页（图片信息） 

![图片](https://uploader.shimo.im/f/djXVtioW0ZFRo9mm.png!thumbnail)

图4-9：图片详情页（无评论） 

![图片](https://uploader.shimo.im/f/nQLiwyKD5AURDX5r.png!thumbnail)

图4-10：图片详情页（有评论） 

![图片](https://uploader.shimo.im/f/l0QvPSxhaucnDinX.png!thumbnail)

图4-11：图片详情页（提交评论） 

使用说明： 

* 图片详情页展示了图片的详细信息。 
* 用户可以点击图片信息右上方的爱心按钮对图片进行收藏或取消对图片的收藏。若用户未收藏本图片，则为空心爱心；若用户收藏了本图片，则为实心爱心。 
* 用户可以将鼠标放置到图片上，对图片进行局部放大。 
* 用户可以对图片发表评论或对图片评论进行点赞。 
* 用户可以根据时间或热度（点赞数）对该图片下的评论进行排序。 
## 4.7 搜索页 

![图片](https://uploader.shimo.im/f/8NxBsHfyVjZfe4q3.png!thumbnail)

图4-12：搜索页（无搜索结果） 

![图片](https://uploader.shimo.im/f/b8sgdXn5SaNvGmae.png!thumbnail)

图4-13：搜索页（有搜索结果） 

![图片](https://uploader.shimo.im/f/Z4bFgriS4pyc7zuo.png!thumbnail)

图4-14：搜索页（有搜索结果） 

![图片](https://uploader.shimo.im/f/pSdlQdkiKv6YrDFc.png!thumbnail)

图4-15：搜索页（有搜索结果） 

使用说明： 

* 用户可以在上方搜索栏中输入搜索内容，敲击回车键提交搜索，根据标题或主题对图片进行模糊搜索，并根据时间或热度对搜索结果进行排序。 
* 所有匹配的搜索结果会显示在页面下方，一页6张图，用户可以点击图片或图片标题进入对应的图片详情页。 
* 用户可以点击页数按钮进行翻页，也可以点击Previous和Next按钮进行翻页，翻页不会刷新页面。 
## 4.8 收藏页 

![图片](https://uploader.shimo.im/f/KpsdMIjFManRALc6.png!thumbnail)

图4-16：收藏页（我的足迹） 

![图片](https://uploader.shimo.im/f/qxcuJy5Eh2lImfBY.png!thumbnail)

图4-17：收藏页（收藏结果） 

使用说明： 

* 页面上方展示当前用户最近浏览过的图片标题，点击标题，可以进入相应的图片详情页。 
* 页面下方展示收藏图片的主人名及其收藏的图片，若该收藏页属于当前用户，则用户可以取消对某些图片的收藏。 
* 一页6张图，用户可以点击图片或图片标题进入对应的图片详情页。 
## 4.9 个人信息页 

![图片](https://uploader.shimo.im/f/VLRozYFeZPX0UhUU.png!thumbnail)

图4-18：个人信息页 

使用说明： 

* 用户可以在个人信息页查看自己已上传的图片。 
* 用户可以对自己已上传的图片进行编辑修改操作或移除操作。 
## 4.10 好友页 

![图片](https://uploader.shimo.im/f/k7KDffh6PdjAey3B.png!thumbnail)

图4-19：好友页 

![图片](https://uploader.shimo.im/f/10B5WLiVGESKjtTX.png!thumbnail)

图4-20：好友页 

使用说明： 

* 用户 可以根据用户名查找用户，查找为精确匹配，若有结果则会显示在页面下方，用户可以对搜到的用户进行添加好友操作。 
* 用户可以查看好友列表，并通过点击好友列表中好友的用户名或邮箱，进入该好友的收藏页。 
* 用户可以查看好友请求，并通过好友请求。 
* 用户可以设置是否向好友展示自己的收藏页。 
# 五、项目架构设计 

本项目整体采用JSP+Servlet+JavaBean的原生MVC架构，服务器使用Apache Tomcat，数据库使用MySQL。 

项目前端使用jsp+js+css，并使用bootstrap作为页面样式和布局的框架。 

项目后端分为controller，dao，entity，filter，service和utils这6部分。其中，controller部分接收前端传来的数据，对数据进行分派，并调用service部分中的方法对数据进行加工和处理，最后设置要返回给前端的数据；dao部分处理数据库相关操作，提供save、update、find等方法供service部分中的方法使用；entity部分存放了数据库实体类；filter部分是拦截器，主要用于检查登录状况，若用户在未登录的状态下请求需要登录才能使用的功能，则将页面重定向至登录页；service部分涉及对数据的加工和处理操作，调用dao部分的方法对数据库进行增删改查，并将处理后的数据返回给controller部分；utils中封装了一些工具的静态方法。 

![图片](https://uploader.shimo.im/f/P5OwVc7jyBQUkGX2.png!thumbnail)

图5-1：项目架构 

# 六、功能实现和代码说明 

本部分中将对项目中涉及的功能点及其实现进行详细的介绍。 

## 6.1 拦截器、Servlet反射和一个请求的典型处理流程 

本部分不涉及具体的功能实现，但是涉及整个代码结构和项目框架，尤为重要，因此放在最前面。 

首先说明本项目URL请求的典型格式。本项目使用的基本URL请求格式为“/功能模块/功能名”，其中功能模块分为account、image、friend、post和home五大类，对应地，有AccountServlet、ImageServlet、FriendServlet、PostServlet和HomeServlet五个servlet用于处理对各个功能模块中具体功能的请求。我通过web.xml文件中的配置将请求映射至相应的Servlet，如通过/account/*配置，将所有account模块下的请求映射至AccountServlet，如下图所示。 

![图片](https://uploader.shimo.im/f/gtNz1kPaxPvK72pm.png!thumbnail)

图6-1：web.xml配置文件中的部分内容 

在Servlet中，通过反射的方式，获取具体请求的功能名，并调用相应的方法，如下图所示。 

![图片](https://uploader.shimo.im/f/cAoUq0Sg9Z7MBAMr.png!thumbnail)

图6-2：在Servlet采用反射的代码 

如此一来，便不必一个Servlet只能处理一个请求，从而大大地降低了web.xml文件的复杂度，也大大地降低了开发的负担。 

此外，在 基本URL请求格式的基础上，添加了权限控制格式。比如，如果要请求image模块下的一个需要登录后才能使用的功能xxx，则请求格式为/image/authority/xxx；如果请求不需要登录即可使用的功能yyy，则请求格式为/image/yyy。请求在被发送到对应Servlet前，会先经过LoginFilter过滤器进行处理，判断请求是否含有authority。若含有authority，则说明请求的是需要登录后才能使用的功能，则进一步判断session中是否有user（即判断用户是否已经登录），若用户未登录，则将请求重定向至登录界面，如下图所示。 

![图片](https://uploader.shimo.im/f/KoLkb6HhLOMTykbm.png!thumbnail)

图6-3：登录过滤器 

## 6.2 注册功能 

首先，在提交表单前，使用bootstrapValidator对表单的内容和格式进行预检验（包括全部内容非空检查、邮箱格式检查、密码与确认密码的一致性检查、用户名和密码长度检查）。若未通过预检验，则不予提交表单，并提示相应的错误信息，代码实现如下图所示。 

![图片](https://uploader.shimo.im/f/h1ACfxM86x78VFoU.png!thumbnail)

图6-4：bootstrapValidator的验证规则 

通过前端预检验后，表单被提交至后端，进行用户名重复检验和验证码检验（6.4部分中会详细叙述）。其中，用户名重复检验的实现是通过查找数据库的traveluser表中是否已经存在相应的用户名，其实现比较简单，不作详述。 

若通过上述两个检验，则将用户信息存入数据库中，并将用户存入session中，从而实现注册后直接登录，而后将页面重定向至首页；若未通过上述两个检验，则将错误信息存入request域中，将页面转发回注册页，并显示相应的错误提示信息。 

相关功能的具体实现可见controller目录下的AccountServlet中的register方法，service目录下的AccountService中的相应方法，以及dao目录下的DAO、UserDAO和UserDAOJdbcImpl。 

## 6.3 登录功能 

在进入登录页面前，后端会通过 request.getHeader("Refer")方法获取用户在进入登录页面前的页面URI，并将该值记录在session中，便于用户登录成功后跳转回该页面，代码实现如下图所示。 

![图片](https://uploader.shimo.im/f/vsu5XAeAIYr3gKCN.png!thumbnail)

图6-5：进入登录页面前的代码实现 

在登录页面中，在提交表单前，使用bootstrapValidator对表单的内容和格式进行预检验（包括全部内容非空检查）。若未通过预检验，则不予提交表单，并提示相应的错误信息，代码实现与6.2注册功能中对应部分相似，在此不作详细描述，具体可见js目录下的login.js。 

通过前端预检验后，表单被提交至后端，进行用户名/密码检验和验证码检验（6.4部分中会详细叙述）。其中，用户名/密码检验的实现通过查询登录的用户名是否存在，以及用户名与密码是否与数据库中存放的信息相匹配，其实现比较简单，不作详述。 

若通过以上两个检验，则将用户信息存放至session中，并设置登录成功状态为true并存放至request域中，而后获取进入登录页面前存放在session中的pageBeforeLogin，得到进入登录页面前的页面，移除该session，而后将页面转发至该页面中，在该页面中提示登录成功（通过request域中的登录成功状态得知登录成功）。 

若为通过以上两个检验，则将错误信息存放至request1域中，将页面转发回登录页，并显示相应的错误提示信息。 

相关功能的具体实现可见controller目录下的AccountServlet中的login方法和jumpToLogin方法，service目录下的AccountService中的相应方法，以及dao目录下的DAO、UserDAO和UserDAOJdbcImpl。 

## 6.4 密码加密传输功能 

密码在表单提交前使用md5进行加密。由于表单提交前还需要使用bootstrapValidator进行格式的预检验（如6.2与6.3部分中所述），通过检验后才能提交表单，因此表单提交时的顺序为：bootstrapValidator预检验->密码加密->表单提交。为了实现这一功能，修改表单的submit函数如下图所示。 

![图片](https://uploader.shimo.im/f/GA0XgcBilKPCDREI.png!thumbnail)

图6-6：若bootstrapValidator验证不通过，则不执行后续操作 

![图片](https://uploader.shimo.im/f/3OaVUdbAcsEIqXvJ.png!thumbnail)

图6-7：使用md5对密码进行加密 

其中，首先使用e.isDefaultPrevented()判断是否通过 bootstrapValidator预检验，若不通过，则不进行后续加密和提交操作；若通过，则执行加密操作，将密码输入框内的密码使用md5.js plugin的hash函数进行加密操作，而后再提交表单。 

由于md5加密算法对相同的内容进行加密后总能获得相同的加密结果，因此加密后的密码直接存入数据库，不再进行解密。当用户进行登录时，直接将用户输入的密码进行加密后的结果与数据库中的密文进行对比即可。 

## 6.5 验证码功能 

验证码使用google的reCaptcha，国内许多大型网站均使用这一工具，其使用方式如下所述。首先在 [https://www.google.com/recaptcha/admin](https://www.google.com/recaptcha/admin)中免费注册和管理域名，并获取密钥，需要注意的是，即使是localhost，也需要进行注册，若是需要部署，则注册相应的域名即可。一个域名对应一个密钥，在后面会用到。 

![图片](https://uploader.shimo.im/f/bYzWvTk868f7q0fi.png!thumbnail)

图6-8：验证码请求管理 

而后在项目中引入recaptcha.js，并将 [www.google.com](http://www.google.com改为)改为 [www.recaptcha.net](http://www.recaptcha.net)（否则在国内无法使用），再在表单中引入recaptcha组建，并设置之前获得的密钥。 

![图片](https://uploader.shimo.im/f/iYvgZaxEdTtNzOYC.png!thumbnail)

图6-9：在页面中嵌入验证码组件 

该组件会自动生成一个id为g-recaptcha-response的隐藏域，每当通过验证后，该隐藏域会被设置为一个token，后端可以通过获取这一token，并加以判断，二次检验验证码是否通过，从而避免有人绕开验证码的前端检验直接向后端发送请求。 

## 6.6 首页展示 

进入首页前，后端读取数据库中最热的三张图片和最新的三张图片，并将其存放在request域中，将其转发至home.jsp中进行读取和回显即可。其实现比较简单，详细代码可见HomeServlet和HomeService中的相应方法。 

![图片](https://uploader.shimo.im/f/awv2q0dscdwGnY4K.png!thumbnail)

图6-10：查询最新与最热的三张图 

## 6.7 详情页展示 

对于图片基本信息的展示的实现非常简单，只需根据前端传来的imageId，在数据库中查到相应的image信息，将其加入request域，转发会前端后进行回显即可。 

需要注意的有两点：用户是否已经收藏了本图片，和用户的足迹。 

对于用户是否已经收藏了本图片，需要在travelimagefavor表中查询当前用户的uid与图片的imageId是否已经存在对应关系，如下图所示。若存在，则说明用户已经收藏了该图片，则在request域中设置isCollected为true；反之，说明用户未收藏该图片，则在request域中设置isCollected为false。前端jsp页面通过c:if判断isCollected，显示不同的样式，并分别提供“收藏该图片”和“移除收藏”这两个不同的功能。 

![图片](https://uploader.shimo.im/f/b4QWwb9DY39IqSS0.png!thumbnail)

图6-11：判断当前图片是否已经被当前用户收藏 

对于用户的足迹，则先从session中获取当前已有的用户足迹，若已经存在本图片，则移除先前浏览本图片的足迹，而后重新加入本图片，从而实现更新浏览顺序的效果。而后进一步判断足迹中的图片数是否大于10个，若大于10个，则移除第一个图片，并加入当前图片，从而达到最多显示10个浏览足迹的效果。足迹的展示的部分比较简单，只需在jsp页面中获取足迹的session，并使用c:foreach进行遍历和展示即可，关键是在浏览详情页时加入浏览足迹。 

![图片](https://uploader.shimo.im/f/cFPpMW4NPobAfwuS.png!thumbnail)

图6-12：设置用户的浏览足迹 

相关功能的具体实现可见controller目录下的ImageServlet中的queryImageDetail方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.8 详情页收藏功能 

如6.7中所述，前端jsp页面通过c:if判断后端传递的isCollected，显示不同的样式，并分别提供“收藏该图片”和“移除收藏”这两个不同的功能。 

对于“收藏该图片”功能，在travelimagefavor表中插入当前用户的uid与图片的imageId即可，在插入后，还需要将image的heat+1，并更新数据库中相应imageId的image信息；对于“移除收藏”功能，只需执行“收藏该图片”功能相反的功能即可，在此略去。 

相关功能的实现比较简单，具体可见controller目录下的ImageServlet中的collectImage方法和removeCollectedImage方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.9 详情页图片局部放大功能 

详情页的图片局部放大功能使用jquery.zoom.js组件，只需为图片填上一层div标签，并设置id为zoom，在页面加载时使用$("#zoom").zoom();进行初始化即可。可以通过修改magnify的值改变图片放大的倍率。 

![图片](https://uploader.shimo.im/f/JFsUJS22jzzWUiCN.png!thumbnail)

图6-13：图片局部放大的配置参数 

该组件的基本实现原理是，在img下方呈放一个更大的img，但仅展示原图大小的尺寸。根据鼠标的坐标值，设置下方大图片的坐标值，从而实现局部放大的效果。 

## 6.10 详情页评论功能 

图片评论功能可以分为三部分：发表评论、根据热度/时间展示评论和给评论点赞。 

首先是发表评论功能。用户可以在图片详情页的最下方提交发表评论的表单。用户提交表单后，后端获取评论者的用户名、用户所评论的图片imageId和评论内容，并初始化创建时间、最后修改时间和热度，而后将其存入数据库的评论表中。一个评论的基本信息如下图所示。 

![图片](https://uploader.shimo.im/f/fQVMQDWcQprcZCGC.png!thumbnail)

图6-14：评论实体类的属性 

其次是根据热度/时间展示评论功能，该功能使用ajax实现，ajax函数的参数有sort（评论的排序方法）和imageId。 

![图片](https://uploader.shimo.im/f/2nLM9DdmKTCP22mP.png!thumbnail)

图6-15：评论的ajax请求函数 

用户在进入图片详情页时会默认调用ajaxPost("time", ${requestScope.image.imageId})，此外，当用户点选排序方式的单选框(radio)，也会调用相应的ajaxPost()函数。该函数向后端发送POST请求。后端根据排序方式和imageId得到相应的评论的list，并将其存放在map中，回传给前端。前端的ajax的回调函数根据data中的post信息，对jsp页面进行实时填充，展示评论的内容。 

![图片](https://uploader.shimo.im/f/jrGAxoORclYS6tWG.png!thumbnail)

图6-16：查询评论并递交给回调函数 

最后是给评论点赞的功能，其与图片收藏功能的实现非常相似，将评论的热度+1即可，再次不再详述。 

相关功能的具体实现可见controller目录下的PostServlet中的submitPost方法、likePost方法和ajaxQueryPost方法，service目录下的PostService中的相应方法，以及dao目录下的DAO、PostDAO和PostDAOJdbcImpl。 

## 6.11 搜索页和ajax分页 

搜索功能和分页功能均使用ajax实现。当用户提交搜索结果时，会禁用表单提交，获取表单的内容并调用相应的ajax函数，通过ajax的回调函数填充页面、展示搜索结果，其具体实现如下所述。 

ajax函数的参数有4个：search（搜索内容）、sort（排序方式）、select（根据什么搜索）以及page（当前的页数），如下图所示。 

![图片](https://uploader.shimo.im/f/sLau9oZGCuXFpjQf.png!thumbnail)

图6-17： 搜索页的ajax请求函数 

当用户提交表单时，获取表单的内容，设置page=1，而后调用ajaxPage()函数并禁用表单提交，如下图所示。而后通过ajax的回调函数填充页面、展示搜索结果。 

![图片](https://uploader.shimo.im/f/da9QiB0MyJQiOIn2.png!thumbnail)

图6-18：搜索页调用ajax函数并阻止表单提交 

后端收到ajax请求后，首先根据 search（搜索内容）、sort（排序方式）、select（根据什么搜索）查询数据库，并获取结果。而后根据图片结果的list的大小和每一页显示的图片数，计算出总页数，并计算出当前页中要展示的图片的index。而后从所有结果中获取需要的那几个图片，生成新的list，放入回传的map中。而后将page信息（总页数、当前页数和每页的图片数）也放入回传的map中。如下图所示。 

![图片](https://uploader.shimo.im/f/nzh9PsOp2fERimSx.png!thumbnail)

图6-19：查询搜索结果并递交给回调函数 

最后，前端的ajax回调函数根据传回的图片的list，填充并展示搜索结果；再根据page信息，填充搜索结果下方的页面跳转栏。当点击相应页数时，调用相应的ajaxPage()函数，重复上述操作并进行新一次的填充。 

需要注意的是，由于前端提供Previous按钮和Next按钮供页面跳转，其请求的页数为当前页数+1或-1，可能出现页数为0或页数超出总页数的情况，因此我才后端Page的构造函数中对其进行限制，如下图所示。 

![图片](https://uploader.shimo.im/f/1FIrhBusyMaaWpA5.png!thumbnail)

图6-20：Page的构造函数，防止当前页越界 

相关功能的具体实现可见controller目录下的ImageServlet中的ajaxQueryImage方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.12 上传功能 

首先，前端使用 bootstrap-imageupload组件实现用户上传图片的实时预览功能，用户选取图片文件后，该图片会直接显示在页面的下方。 

为了使表单提交时所有内容非空，前端使用HTML5的required进行校验和判断。通过校验后，表单提交至后端，编码方式为multipart/form-data。后端使用commons-fileupload包对表单内容进行解析。首先将表单内容存放之FileItem的list中，而后通过item.isFormField()方法判断该表单项是文件还是普通文本。使用servletContext.getRealPath("/")获取web项目的绝对路径，将图片名修改为当前时间戳，而后将图片文件存入服务器的对应位置中，最后将图片信息存入数据库中。 

![图片](https://uploader.shimo.im/f/ZReEu0YqaOtBAoRI.png!thumbnail)

图6-21：上传图片 

相关功能的具体实现可见controller目录下的ImageServlet中的uploadImage()方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.13 我的照片页和修改/删除我的照片功能 

该部分可以分为三个子部分：我的照片的展示、修改和删除。 

首先是我的照片的展示，由于涉及到了分页，使用了ajax技术，基本复用了搜索结果展示中所使用的ajax函数和相应技术。该ajax函数的参数只有一个，即为请求的页数，进入我的照片页时默认调用ajaxPage(1)，获取第一页的结果。如下图所示。 

该ajax函数向后端发送请求，根据session中用户的uid查询数据库，并获取结果。而后根据图片结果的list的大小和每一页显示的图片数，计算出总页数，并计算出当前页中要展示的图片的index。而后从所有结果中获取需要的那几个图片，生成新的list，放入回传的map中。而后将page信息（总页数、当前页数和每页的图片数）也放入回传的map中。最后，在回调函数中填充jsp页面，展示搜索结果。具体内容可参考6.11部分。 

![图片](https://uploader.shimo.im/f/UJe5x1kk9pQwuIdc.png!thumbnail)

图6-22：我的照片的ajax请求函数 

其次是我的照片的修改。前端向后端发送请求后，后端根据imageId，查询数据库并获取相应的image信息，将其填充至request域中，而后转发至上传页中。上传页通过request域中的信息进行预填充。其实现相对简单，在此不再详述。 

最后是我的照片的删除。前端向后端发送请求后，后端根据imageId，查询数据库并获取相应的image信息，判断当前用户是否为image的所有者（避免有人直接调api发送请求删除别人上传的图片），若是image的所有者，则删除数据库中该image的信息及服务器中的文件即可。 

相关功能的具体实现可见controller目录下的ImageServlet中的jumpToEditUploadedImage()方法、removeUploadedImage()方法和ajaxQueryUploadedImages()方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.14 收藏页 

收藏页的展示由于涉及到了分页，使用了ajax技术，基本复用了搜索结果展示中所使用的ajax函数和相应技术。该ajax函数的参数有两个，即为请求的页数和请求的uid（因为可能是要查询别人的收藏结果，为了实现复用，不能直接从session中获取当前用户的uid进行判断），如下图所示。 

![图片](https://uploader.shimo.im/f/VVAWxZdVYgvbqIti.png!thumbnail)

图6-23：收藏页的ajax请求函数 

后端在接受前端的请求后，首先根据uid查询数据库，并获取结果。而后根据图片结果的list的大小和每一页显示的图片数，计算出总页数，并计算出当前页中要展示的图片的index。而后从所有结果中获取需要的那几个图片，生成新的list，放入回传的map中。而后将page信息（总页数、当前页数和每页的图片数）也放入回传的map中。具体内容可参考6.11部分。 

而后，判断请求的uid与session中存放的用户uid是否相同，若相同，则设置isFreind为false；若不同，则设置isFriend为true，再将isFriend也放入回传的map中。若isFriend为true，则还需要进一步判断好友是否开放了收藏图片查看权限，若开放（user的status为1），则设置show为true；若未开放（user的status为2），则设置show为false，再将show也放入回传的map中。 

最后，在回调函数中根据isFriend和show以及list和page信息填充jsp页面，展示搜索结果。 

相关功能的具体实现可见controller目录下的ImageServlet中的ajaxQueryCollectedImages()方法，service目录下的ImageService中的相应方法，以及dao目录下的DAO、ImageDAO和ImageDAOJdbcImpl。 

## 6.15 添加好友功能 

这一部分主要涉及五个子部分：查找用户、发送好友申请、查看好友申请、接受好友申请和查看好友列表。 

在描述这几个子部分之前，首先要介绍用户好友的数据库设计。数据库的每一行有三个数据项，分别是请求id，发送者的uid和接受者的uid。用户之间的关系可以看作是一个有向图。当某用户向其他用户发送好友申请时，将该用户的uid设置为发送者的uid，将其他用户设置为接受者的uid，并存入数据库，如此一来，他们便建立了单向的联系；当某用户接受好友申请时，将接受申请者的uid设置为发送者的uid，将原发送者的uid设置为接受者的uid，并作为新的数据表的一行存入数据库，如此一来，他们便建立了双向的联系。接受好友请求也可视为反向的加好友操作。当且仅当两个用户直接存在双向的联系时，他们才是好友关系。至于查看好友申请，只需查找有向该用户的单向关系但无双向关系的用户即可。 

解决了数据库的设计问题，功能的实现就非常简单了。 

第一点是是查找用户，这里使用精确匹配的方式，根据用户输入的用户名在数据库中进行查找，若有结果则返回并填充页面。 

第二点是发送用户请求，将当前用户的uid设置为发送者的uid，将其他用户设置为接受者的uid，并存入数据库，如此一来，他们便建立了单向的联系。 

第三点是查看好友申请，查看以当前用户作为接受者的数据表行，且当前用户与发送者无双向联系，则发送者即为还未通过的好友申请发送者，返回并填充页面。 

第四点是接受好友申请，将接受申请者的uid设置为发送者的uid，将原发送者的uid设置为接受者的uid，并作为新的数据表的一行存入数据库，如此一来，他们便建立了双向的联系。 

第五点是查看好友列表，查找所有与当前用户有双向联系的用户，返回并填充页面即可。 

## 6.16 好友收藏图片权限管理功能 

这里出于UI设计和用户操作便捷性的考量，不采用表单提交，而是直接用了一个checkbox，如下图所示。 

![图片](https://uploader.shimo.im/f/jMkg4vEU99A44OJl.png!thumbnail)

图6-24：设置好友查看搜索图片权限 

通过ajax技术，每当checkbox的值发生改变时，调用ajax函数，向后端发送请求，修改用户属性中的status值，当用户关闭权限时，status为2；当用户开启权限时，status为1。用户以好友身份时进入收藏页时，会判断收藏页主人用户的status值，从而判断是否展示收藏的图片。 

# 七、项目部署 

本项目部署在腾讯云服务器上，服务器参数为1核、2GB、1Mbps。部署时除了腾讯云自带的控制台终端外，还使用到了WinSCP和XShell6这两个工具。 

首先，在服务器中安装mysql、tomcat和jdk，其版本应尽量与开发时的版本一致，至少jdk的大版本最好要一致。 

安装完成之后，将本地数据库中的数据表导出为.sql的文件，放入服务器中，在服务器的mysql中使用source指令将.sql文件导入服务器的数据库中。 

完成数据库导入后，将intellij自动生成的out目录下的_war_exploded文件夹移入数据库的tomcat的webapps文件夹下（也可以编译成.war文件并放入webapps文件夹下，tomcat会在启动时自动解析.war文件）。 

最后，将c3p0的配置文件中的jdbcUrl从localhost改为部署的域名，启动tomcat，即可完成部署，通过ip地址访问该web项目。 

# 八、问题与解决方案 

## 8.1 无法通过onsubmit实现在bootstrapValidator验证通过后为密码加密 

问题详情： 

如6.4部分中所述，登录或注册的表单表单提交时的顺序为：bootstrapValidator预检验->密码加密->表单提交。然而，如果使用onsubmit执行函数，则会在bootstrapValidator预检验为通过的情况下对密码进行加密。比如，密码框为空时，提交表单时bootstrapValidator会检验到并予以提示，阻止表单的提交，但并不能组织onsubmit执行函数中的对密码进行加密的操作，于是密码框内会被填充入加密后的字符串，为用户带来不便。 

解决方案： 

在submit函数中判断e.isDefaultPrevented()，若为false，说明bootstrapValidator检验不通过，则直接返回；若为true，bootstrapValidator检验中国，则执行submitForm()，在此函数中对密码进行加密，加密完成后提交表单。 

![图片](https://uploader.shimo.im/f/GA0XgcBilKPCDREI.png!thumbnail)

图8-1：若bootstrapValidator验证不通过，则不执行后续操作 

参考资料： 

[https://github.com/1000hz/bootstrap-validator/issues/35](https://github.com/1000hz/bootstrap-validator/issues/35)

## 8.2 ajax请求重定向问题 

问题详情： 

在使用某些ajax请求后要用到页面重定向，然而ajax请求默认不支持重定向，因为它是局部刷新，不重新加载页面。 

解决方案： 

在后端创建重定向工具类RedirectUtils，若请求是ajax请求，则将重定向的地址设置到响应头中，让前端执行重定向。需要ajax重定向的前端页面也加载相应的js代码，执行请求重定向，从而实现ajax请求的重定向。 

![图片](https://uploader.shimo.im/f/Tp4lqzDIQaHRECup.png!thumbnail)

图8-2：重定向工具的后端实现 

![图片](https://uploader.shimo.im/f/OsNjlOyKtXFsQylT.png!thumbnail)

图8-3：重定向工具的前端实现 

参考资料： 

[https://www.cnblogs.com/lgjlife/p/10445483.html](https://www.cnblogs.com/lgjlife/p/10445483.html)

## 8.3 RSA加密算法问题 

问题详情： 

为了实现数据传输加密，我最开始使用了jsencrypt.js，其使用了RSA加密算法，在前端使用公钥加密，在后端使用私钥解密，而后存入数据库。由于采用了随机化的填充方式，其每次加密后，即使是相同的文本，也会获得不同的密文。这就导致了后端在接收数据后必须进行解密后再存入数据库，而不能直接将密文直接存入数据库并对密文进行比较和判断。然而，在前端通过jsencrypt.js进行加密后密文却不能在后端通过java进行解密。 

解决方案： 

问题的原因初步判断是，java的commons-codec包中使用的RSA算法与jsencrypt.js中使用的算法略有不同，虽然可以进行解密，但其步骤非常复杂，且解密后将密码以明文方式存放至数据库中，也会带来安全风险。因此我改用md5加密算法，该算法对于相同的文本每次加密的结果均相同，因此可以直接将前端加密后的密文存放在数据库中，通过密文的比较判断密码的正确与否。 

# 九、项目总结与心得 

本次项目采用JSP+Servlet+JavaBean的原生MVC架构，服务器使用Apache Tomcat，数据库使用MySQL，使得我从更底层的角度对一个Java Web项目有所了解与掌握。同时，我将之与之前软件工程课中所实现的SpringBoot+Vue Java Web项目以及在实习中初步学习的SSH框架Java Web项目进行对比，从而对整个Java Web的发展脉络有所感悟。 

最开始的JSP+Servlet+JavaBean的原生MVC架构，初步提出了Model、View和Controller三层结构，但jsp的使用使其前后端仍相对比较紧密的结合在一起，难以彻底实现前后端分离的开发，难以仅仅通过api文档就架起前后端之间的桥梁。此外，每个HttpServlet需要重写doPost和doGet方法，虽然也可以通过反射的方式实现一个Servlet对应多个请求，但这种原生的方法为开发带来了许多不便。 

基于此的SSH框架，通过structs的配置文件实现了一个Servlet对应多个请求，可以在配置文件中指定请求对应的类中的方法，从而使开发更便捷。此外，hibernate也为DAO层提供了一层更好的封装，为开发带来便捷。然而，jsp的使用还是使其前后端仍相对比较紧密的结合在一起，此外，繁杂的xml配置文件也给项目的开发带来诸多不便。 

最新的SpringBoot+Vue，将前后端彻底分离开来，可以部署至不同的端口上，通过跨域的方式进行请求的传递。此外，SpringBoot的使用使得繁杂的xml配置文件不再必要，使得项目结构更加清晰。SpringBoot中内置的tomcat容器、自带的JPA内存数据库，都给开发带来了极大的便捷。 

尽管SpringBoot+Vue如此便捷，但了解一个Java Web项目的底层实现仍然是十分必要的。当抽象层级高的框架遇到某些问题时，也只能从底层去寻找并解决问题。底层实现的原理对于了解框架的实现也是十分必要的。这次暑假的Java Web项目为我提供了一个从实践中了解并运用Servlet等底层知识的绝佳机会，同时也让我能够在实践中复习、巩固以及联系先前学习的知识。 

