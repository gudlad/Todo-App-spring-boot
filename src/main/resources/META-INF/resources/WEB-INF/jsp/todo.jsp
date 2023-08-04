<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
    <h1> Enter Todo Details </h1>
    <form:form method="post" modelAttribute="todo">
        <fieldset class="mb-3">
            <form:label path="description">Description</form:label>
            <form:input path="description" required="required" type="text"/>
            <form:errors cssClass="text-warning" path="description"/>
        </fieldset>
        <fieldset class="mb-3">
            <form:label path="targetDate">Target Date</form:label>
            <form:input path="targetDate" required="required" type="text"/>
            <form:errors cssClass="text-danger" path="targetDate"/>
        </fieldset>
        <form:input path="id" type="hidden"/>
        <form:input path="done" type="hidden"/>
        <br>
        <input class="btn btn-success" type="submit">
    </form:form>
</div>
<%@ include file="common/footer.jspf"%>
<script>
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd',
        startDate: '-3d'
    });
</script>