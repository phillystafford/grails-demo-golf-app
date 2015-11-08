<%@ page import="grails.demo.golf.app.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="event.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${grails.demo.golf.app.Course.list()}" optionKey="id" required="" value="${eventInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="event.players.label" default="Players" />
		
	</label>
	<g:select name="players" from="${grails.demo.golf.app.Player.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.players*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="event.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${eventInstance?.title}"/>

</div>

