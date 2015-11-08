<%@ page import="grails.demo.golf.app.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="course.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

