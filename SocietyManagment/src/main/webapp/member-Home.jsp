<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Member Registration</title>
  
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
          <h2 class="text-md mb-2">Member Home page</h2>
          <div class="divider mx-auto my-4"></div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">

      </div>
    </div>
  </div>
</section>

</body>
</html>
