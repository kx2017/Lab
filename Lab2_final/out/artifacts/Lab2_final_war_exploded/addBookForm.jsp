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
    <div id="content">


        <h3 id="add-book-head">添加图书</h3>
        <div id="inputForm">


            <s:form action="bookAdded" theme="simple">

                <label class="addBookLbl" for="bookAdded_newBook_isbn">ISBN号：</label>
                <s:textfield name="newBook.isbn" />
                <s:fielderror>
                    <s:param>newBook.isbn</s:param>
                </s:fielderror>
                <br />
                <br />

                <label class="addBookLbl" for="bookAdded_newBook_title">书名：</label>
                <s:textfield name="newBook.title" />
                <s:fielderror>
                    <s:param>newBook.title</s:param>
                </s:fielderror>
                <br />
                <br />

                <label class="addBookLbl" for="bookAdded_newBook_authorID">作者编号：</label>
                <s:textfield name="newBook.authorID" />
                <s:fielderror>
                    <s:param>newBook.authorID</s:param>
                </s:fielderror>
                <br />
                <br />

                <label class="addBookLbl" for="bookAdded_newBook_publisher">出版社：</label>
                <s:textfield name="newBook.publisher" />
                <s:fielderror>
                    <s:param>newBook.publisher</s:param>
                </s:fielderror>
                <br />
                <br />

                <label class="addBookLbl" for="bookAdded_newBook_publishDate">出版日期：</label>
                <s:textfield name="year" class="date" />年
                <s:textfield name="month" class="date" />月
                <s:textfield name="day" class="date" />日
                <s:fielderror>
                    <s:param>day</s:param>
                </s:fielderror>
                <br />
                <br />

                <label class="addBookLbl" for="bookAdded_newBook_price">价格：￥</label>
                <s:textfield name="newBook.price" />
                <s:fielderror>
                    <s:param>newBook.price</s:param>
                </s:fielderror>
                <br />
                <br />


                <s:submit value="添加" id="add_submit" />

            </s:form>

        </div>
    </div>
    <div id="footer">哈工大软件工程Lab2</div>
</div>
</body>
</html>