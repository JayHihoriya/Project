<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="contact-form-wrap section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="section-title text-center">
          <h2 class="text-md mb-2">Member New Password</h2>
          <div class="divider mx-auto my-4"></div>
        </div>
      </div>
    </div>

    <% String email = (String) request.getAttribute("email"); %>
    <% String msg = (String) request.getAttribute("msg"); %>

    <% if (msg != null) { %>
      <div class="section-title text-center">
        <h4 class="text-md mb-2" style="color: red;"><%= msg %></h4>
      </div>
    <% } %>

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <form action="member" class="appointment-form ftco-animate" method="post">
          <div class="row">

            <!-- New Password -->
            <div class="col-md-6 mb-3 form-group">
              <input name="NewPass" type="password" class="form-control" placeholder=" " required>
              <label class="form-label-float">New Password</label>
            </div>

            <!-- Confirm New Password -->
            <div class="col-md-6 mb-3 form-group">
              <input name="CNewPass" type="password" class="form-control" placeholder=" " required>
              <label class="form-label-float">Confirm New Password</label>
            </div>

            <!-- Hidden Email -->
            <input name="email" type="hidden" value="<%= email %>">

            <!-- Submit -->
            <div class="col-12 text-center mt-3">
              <input name="action" type="submit" value="NewPassword" class="btn btn-secondary py-3 px-5">
            </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</section>

</body>
</html>