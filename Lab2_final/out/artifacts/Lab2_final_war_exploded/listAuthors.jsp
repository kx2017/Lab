<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <title>图书管理CRUD-DEMO</title>
</head>
<body>

<h2 id="headline">
    <a href="index.jsp">图书管理CRUD-DEMO</a>
</h2>
<div id="main">
    <div id="header">
        <ul>
            <li><a href="<s:url action='list' />">浏览全部图书</a></li>
            <li><a href="<s:url action='listAuthors' />">浏览全部作者</a></li>
            <li><a href="<s:url action='searchInput' />">查询指定作者</a></li>
            <li><a href="<s:url action='addBookForm' />">添加图书信息</a></li>
        </ul>
    </div>
    <div id="content" class="author">
        <table id="Authortbl">
            <thead>
            <tr>
                <th class="authorID">编号</th>
                <th class="name">姓名</th>
                <th class="age">年龄</th>
                <th class="country">国家</th>
                <th class="operation">操作</th>
            </tr>
            </thead>
            <tbody>
            <s:iterator value="authors">
                <tr>
                    <td><s:property value="authorID" /></td>


                    <td class="zzm"><a
                            href="<s:url action='showAuthor'> <s:param name='authorID' value='authorID' /> </s:url>">
                        <s:property value="name" />
                    </a></td>

                    <td><s:property value="age" /></td>
                    <td><s:property value="country" /></td>
                    <td class="cz"><a
                            href="<s:url action='updateAuthor'> <s:param name='authorID' value='authorID' /> </s:url>">
                        编辑</a> &nbsp; <a
                            href="<s:url action='showAuthor'> <s:param name='authorID' value='authorID' /> </s:url>">
                        查看</a></td>

                </tr>
            </s:iterator>
            </tbody>
        </table>
    </div>
    <div id="footer">哈工大软件工程Lab2</div>
</div>
</body>
</html>