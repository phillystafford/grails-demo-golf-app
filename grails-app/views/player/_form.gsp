<%@ page import="grails.demo.golf.app.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'nickName', 'error')} ">
	<label for="nickName">
		<g:message code="player.nickName.label" default="Nick Name" />
		
	</label>
	<g:textField name="nickName" value="${playerInstance?.nickName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="player.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${playerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'handicap', 'error')} required">
	<label for="handicap">
		<g:message code="player.handicap.label" default="Handicap" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="handicap" type="number" value="${playerInstance.handicap}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="player.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${playerInstance?.lastName}"/>

</div>

