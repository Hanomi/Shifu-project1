<%@ include file="templates/adminStart.jspf" %>

<c:if test="${pageContext.request.userPrincipal.name != null}">
    <%@include file="templates/adminHeader.jspf" %>

    <div class="row">
        <div class="col">
            <h4>Edit article</h4>
            <form:form method="POST" modelAttribute="articleForm" action="${contextPath}/admin/articles/edit/save">
                <form:hidden path="id"/>
                <p>
                        <form:input path="title" title="Title" placeholder="Title"/>
                        <form:errors path="title"/>
                </p>
                <p>
                        <form:textarea path="content" title="Content" placeholder="Content"/>
                        <form:errors path="content"/>
                </p>
                <p>
                        <form:input path="slug" title="Slug" placeholder="Slug"/>
                        <form:errors path="slug"/>
                </p>
                <p>
                    <input type="submit" value="Save"/>
                </p>
            </form:form>
        </div>
    </div>
</c:if>

<%@ include file="templates/admintEnd.jspf" %>

