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

.no-material label {
  position: static !important;
  top: auto !important;
  left: auto !important;
  transform: none !important;
  font-size: 14px !important;
  color: #333 !important;
  background: transparent !important;
  z-index: 1;
}

.no-material select.form-control {
  all: unset;
  display: block;
  width: 100%;
  padding: 8px 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  background-color: #fff !important;
  font-size: 14px;
  color: #000 !important;
  appearance: menulist !important;
  -webkit-appearance: menulist !important;
  -moz-appearance: menulist !important;
  position: relative;
  z-index: 2;
}

</style>
</head>
<body>
<section class="contact-form-wrap section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6"><br>
        <div class="section-title text-center">
          <h2 class="text-md mb-2">Member Registration</h2>
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

            <!-- First Name -->
            <div class="col-md-6 mb-3 form-group">
              <input name="first_name" type="text" class="form-control" placeholder=" " required>
              <label class="form-label-float">First Name</label>
            </div>

            <!-- Last Name -->
            <div class="col-md-6 mb-3 form-group">
              <input name="last_name" type="text" class="form-control" placeholder=" " required>
              <label class="form-label-float">Last Name</label>
            </div>

            <!-- Gender -->
            <div class="col-md-6 mb-3 form-group">
			  <div class="no-material">
			    <label>Gender</label>
			    <select name="gender" class="form-control" required>
			      <option value="" disabled selected hidden>Select Gender</option>
			      <option value="Male">Male</option>
			      <option value="Female">Female</option>
			      <option value="Other">Other</option>
			    </select>
			  </div>
			</div>


            <!-- Date of Birth -->
            <div class="col-md-6 mb-3 form-group">
              <label >Date of Birth</label>
              <input name="dob" type="date" class="form-control"  required>
            </div>

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

            <!-- Contact -->
            <div class="col-md-6 mb-3 form-group">
              <input name="contact_no" type="tel" class="form-control" placeholder=" " maxlength="10" required>
              <label class="form-label-float">Contact No.</label>
            </div>

            <!-- Occupation -->
            <div class="col-md-6 mb-3 form-group">
              <input name="occupation" type="text" class="form-control" placeholder=" " required>
              <label class="form-label-float">Occupation</label>
            </div>

			<div class="col-md-6 mb-3 form-group">
				<div class="no-material">
				  <label>Block</label>
				  <select name="block" class="form-control">
				    <option value="">Select Block</option>
				    <option value="A">A</option>
				    <option value="B">B</option>
				    <option value="C">C</option>
				    <option value="D">D</option>
				  </select>
				</div>
			</div>

				<div class="col-md-6 mb-3 form-group">
				<div class="no-material">
				  <label>Flat No</label>
				  <select name="flat_no" class="form-control">
				    <option value="">Select Flat</option>
				    <option value="101">101</option>
				    <option value="102">102</option>
				    <option value="103">103</option>
				    <option value="104">104</option>
				    <option value="105">105</option>
				    <option value="106">106</option>
				    <option value="107">107</option>
				    <option value="108">108</option>
				    <option value="109">109</option>
				    <option value="110">110</option>
				  </select>
				</div>
			</div>
			
            <!-- Address -->
            <div class="col-md-12 mb-3 form-group">
              <textarea name="address" class="form-control" placeholder=" " required></textarea>
              <label class="form-label-float">Address</label>
            </div>

            <!-- Photo -->
            <div class="col-md-12 mb-3 form-group">
              <input name="photo" type="file" class="" accept="image/*" required>
              
            </div>

            <!-- Submit -->
            <div class="col-12 text-center mt-3">
            <input type="hidden" name="formAction" value="register">
            
		      <input name="action" type="submit" value="Register" class="btn btn-secondary py-3 px-5">
		    </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<script>
document.addEventListener("DOMContentLoaded", function () {
  const blockSelect = document.querySelector('select[name="block"]');
  const flatSelect  = document.querySelector('select[name="flat_no"]');

  flatSelect.disabled = true;

  blockSelect.addEventListener('change', function() {
    const block = this.value;
    console.log("🏢 Block selected:", block);

    flatSelect.disabled = false;

    fetch("<%= request.getContextPath() %>/member?action=getBookedFlats&block=" + encodeURIComponent(block))
      .then(response => {
        if (!response.ok) throw new Error("Network error");
        return response.json();
      })
      .then(bookedFlats => {
        console.log("✅ Booked flats:", bookedFlats);

        const options = flatSelect.querySelectorAll('option');
        options.forEach(opt => {
          if (!opt.value) return;
          const flatNo = parseInt(opt.value);
          if (bookedFlats.includes(flatNo)) {
            opt.disabled = true;
            opt.style.color = "red";
          } else {
            opt.disabled = false;
            opt.style.color = "green";
          }
        });
      })
      .catch(err => {
        console.error("❌ Error fetching flats:", err);
      });
  });
});
</script>

</body>
</html>
