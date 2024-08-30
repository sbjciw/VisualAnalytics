## VASDK 示例

### 1. 创建 Web 页面

我们知道，HTML页面都是通过Web应用服务器加载到用户的浏览器中的。一般的企业应用项目，都有自己的Web应用服务器。这里，为便于说明和方便读者练习，使用MS IIS作为Web应用服务器为例。读者可以根据自己环境所使用的Web应用服务器，进行相应调整。
创建Web页面的步骤：

1)	在Win10机器上启用MS IIS：在“控制面板”中，选择“程序和功能”下面的“启用或关闭Windows功能”，然后在窗口中勾选“Internet Information Services”，单击“确定”按钮，等待系统完成更改。做完该设置后，可以通过访问 http://localhost/ 链接，来验证Web应用服务器已成功启用。
2)	MS IIS Web应用服务器的根目录位于C:\inetpub\wwwroot文件夹。我们在这个文件夹中创建一个子目录，命名为myproj，用于存放我们的HTML页面。
3)	创建一个简单的Web页面，命名为index.html，直接嵌入<sas-report-object> 对象。该文件内容可以参考以下代码：
```html
<html>
<head> <meta http-equiv="content-Type" content="text/html; charset=gb2312"> 
<script async src="https://unpkg.com/@sassoftware/va-report-components@0.14.0/
dist/umd/va-report-components.js"></script>
</head>
<body>
<div id="report">
        <
sas-report-object
          authenticationType="guest"
          url="http://<sas-vaserver>"
          reportUri="<sas-vareport uri>"
          objectName="<sas-vareport objectname>"
        ></sas-report-object>
</div>
</body>
</html>
```

也可以采用Web页面交互的模式，来加载 <sas-report-object> 或 <sas-report>对象。下面的代码，以加载 <sas-report>对象为例。为方便后续说明，将其保存为index_new.html。

```html
<html>
<head> <meta http-equiv="content-Type" content="text/html; charset=gb2312"> 
<script async src="https://unpkg.com/@sassoftware/va-report-components@0.14.0/
dist/umd/va-report-components.js"></script>
</head>
<body>
<script> 
  function loadSimple() {
      document.getElementById('report').innerHTML = "";
  // load the VA report
      const reportElement = new vaReportComponents.SASReportElement();
      reportElement.url = "http://<sas-vaserver>";
      reportElement.reportUri = "<sas-vareport uri>";
      reportElement.authenticationType = "guest";
      reportElement.style.setProperty("--
sas-report-background-color", "#68B8F9");
      reportElement.style.setProperty("--
sas-report-padding", "1rem");
  // place on page
      document.getElementById('report').appendChild(reportElement);
  }
</script> 
<div id="buttons">要加载SAS VA报表，请单击  <button type="button" 
class="btn_load" onclick="loadSimple()">加载报表</button>  按钮。
</div>
<p> </p> 
<div id="report">显示已加载的SAS VA报表</div>
</body>
</html>
```


  
### 2. 获取 SAS VA 报表的 HTML 元素

在SAS Visual Analytics中，打开一个保存好的VA报表。这里，该VA报表的访问权限已设置为匿名访客可以访问。

<b>1.获取 VA 报表的 HTML 元素</b>

可以在以下方法中二选一：

(1)	打开VA报表，单击菜单中的“复制链接”项，再在弹出页面上单击“复制链接”按钮；然后访问https://developer.sas.com/sdk/va/docs/getting-started/#create-a-custom-html-tag页面，在创建定制HTML tag的文本框中，粘贴已经复制的链接，就可以生成调用该报表的对应的HTML元素 <sas-report>。下面是一个 <sas-report> HTML元素的示例：

  ```<sas-report authenticationType="guest" url="http://sas_vaserver.com" reportUri="/reports/reports/8a4dfa84-472b-4c68-8511-da68095820df"></sas-report>```

(2)	打开VA报表，单击菜单中的“复制链接”项，然后在弹出页面的“选项”下，勾选“访客访问”和“可嵌入Web组件”选项，再单击“复制链接”按钮，就可以得到如下的 <sas-report> HTML元素。

  ```<sas-report hideNavigation="auto" authenticationType="guest" url="http://sas_vaserver.com" reportUri="/reports/reports/8a4dfa84-472b-4c68-8511-da68095820df"></sas-report>```
  
<b>2.获取 VA 报表中某个图表对象的 HTML 元素</b>

可以在SAS Visual Analytics中，打开VA报表，然后选中该图表对象后单击其工具菜单，并选择“复制链接”菜单项。然后在弹出页面的“选项”下，勾选“访客访问”和“可嵌入Web组件”，再单击“复制链接”按钮，就可以得到如下的HTML元素 <sas-report-object>。

```<sas-report-object objectName="ve8" authenticationType="guest" url="http://sas_vaserver.com" reportUri="/reports/reports/8a4dfa84-472b-4c68-8511-da68095820df"></sas-report-object>```



### 3. 将VA报表对象嵌入Web页面

要将VA报表对象嵌入Web页面中，需要编辑之前创建的index.html页面文件，在 <body> 里的 <div> 部分，分别找到以下内容，并替换为之前获得的VA报表的HTML元素 <sas-report-object> 相关内容。

以下三个代码段示例中，==> 后面的内容来自VA报表对象所对应的 <sas-report-object> HTML元素的内容。
1)	```url="http://<sas-vaserver>"   ==>   url=http://sas_vaserver.com    ```
2)	```reportUri="<sas-vareport uri>"   ==>   reportUri="/reports/reports/8a4dfa84-472b-4c68-8511-da68095820df"  ```
3)	```objectName="<sas-vareport objectname>"   ==>   objectName="ve8"  ```

另一种方法是，编辑之前创建的index_new.html页面文件，在 <body> 里的 <script> 部分中， 找到VA报表对象的HTML元素 <sas-report-object> 或 <sas-report>，替换相关内容。下面的代码示例中，替换的是为之前获得的VA报表的HTML元素 <sas-report> 的相关内容。

1)	```reportElement.url = "http://<sas-vaserver>";    ==>   reportElement.url = "http://sas_vaserver.com";  ```
2)	```reportElement.reportUri = "<sas-vareport uri>";   ==>   reportElement.reportUri = "/reports/reports/8a4dfa84-472b-4c68-8511-da68095820df"; ```

至此，访问 http://localhost/myproj/index.html 页面，就可以看到VA报表中的图表对象。或者，访问 http://localhost/myproj/index_new.html 页面，刷新后，单击页面上的“加载报表”按钮，就可以看到该HTML页面中加载出的VA报表了，如下图所示。
<p align="center">
  <img src="../img/IndexNew.png" />
</p>


