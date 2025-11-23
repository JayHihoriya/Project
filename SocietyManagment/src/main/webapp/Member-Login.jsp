<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Member Login</title>
  
<style>
.form-group {
  position: relative;
  margin-bottom: 1.5rem;
}

.form-group .form-control {
  padding-top: 1.5rem; /* increased top padding for space above */
  padding-bottom: 0.5rem; /* slight space below */
}

.form-label-float {
  position: absolute;
  top: 0.85rem;              /* vertical alignment: label inside input */
  left: 2rem;                /* moved slightly right */
  transition: 0.2s ease all;
  color: #aaa;
  font-size: 1rem;
  background: white;
  padding: 0 6px;            /* slight horizontal padding */
  pointer-events: none;
}

.form-control:focus + .form-label-float,
.form-control:not(:placeholder-shown) + .form-label-float {
  top: -0.65rem;             /* floats above input */
  left: 0.85rem;             /* aligns nicely when floated */
  font-size: 0.75rem;
  color: #333;
}

/* Optional: Smoother transition */
.form-control {
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

/* Fix spacing for textarea too */
textarea.form-control {
  min-height: 100px;
  resize: vertical;
  padding-top: 1.5rem;
}

</style>
</head>
<body>
<section class="contact-form-wrap section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="section-title text-center">
          <h2 class="text-md mb-2">Member Login</h2>
          <div class="divider mx-auto my-4"></div>
        </div>
      </div>
    </div>
	
					<%
					String msg = (String) request.getAttribute("msg");
					%>
					<%
					if (msg != null) {
					%>
					<div class="section-title text-center">
						<h4 class="text-md mb-2" style="color: red;"><%= msg %></h4>
					</div>

					<%
					}
					%>

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <form action="member" class="appointment-form ftco-animate" method="post" enctype="multipart/form-data">
          <div class="row">

            <!-- Email -->
            <div class="col-md-6 mb-3 form-group">
              <input name="email" type="email" class="form-control" placeholder=" " required>
              <label class="form-label-float">Email</label>
            </div>

            <!-- Password -->
            <div class="col-md-6 mb-3 form-group">
              <input name="password" type="password" class="form-control" placeholder=" " required>
              <label class="form-label-float">Password</label>
            </div>

            <!-- Submit -->
            <div class="col-12 text-center mt-3">
		      <input name="action" type="submit" value="Login" class="btn btn-secondary py-3 px-5">
		    </div>

          </div>
        </form>
        <div class="row justify-content-center mt-2">
            <div class="col-md-8 col-lg-6">
              <div class="section-title text-center">
                <h4 class="mb-4">Need Help Accessing Your Account?</h4>

                <div class="d-grid">
                  <a href="Member-forgot-password.jsp" class="btn btn-outline-warning btn-lg w-100 mb-3">
                    <i class="fas fa-key me-2"></i> Forgot Password
                  </a>

                  <a href="Member-Registration.jsp" class="btn btn-outline-primary btn-lg w-100">
                    <i class="fas fa-sign-in-alt me-2"></i> Not registered yet? Register now
                  </a>
                </div>
               </div>
              </div>
             </div>
        
      </div>
    </div>
  </div>
</section>

</body>
</html>
