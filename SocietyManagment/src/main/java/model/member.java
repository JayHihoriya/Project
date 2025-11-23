package model;

public class member {
	 private int memberId;
	    private String firstName,lastName,gender,dob,email,password,occupation,address,photo,status,block,flat_no;
	   private long contactNo;
	    
	   public String getBlock() {
		return block;
	}
	   public void setBlock(String block) {
		   this.block = block;
	   }
	   public String getFlat_no() {
		   return flat_no;
	   }
	   public void setFlat_no(String flat_no) {
		   this.flat_no = flat_no;
	   }
	   public int getMemberId() {
		   return memberId;
	   }
	   public void setMemberId(int memberId) {
		   this.memberId = memberId;
	   }
	   public String getFirstName() {
		   return firstName;
	   }
	   public void setFirstName(String firstName) {
		   this.firstName = firstName;
	   }
	   public String getLastName() {
		   return lastName;
	   }
	   public void setLastName(String lastName) {
		   this.lastName = lastName;
	   }
	   public String getGender() {
		   return gender;
	   }
	   public void setGender(String gender) {
		   this.gender = gender;
	   }
	   public String getDob() {
		   return dob;
	   }
	   public void setDob(String dob) {
		   this.dob = dob;
	   }
	   public String getEmail() {
		   return email;
	   }
	   public void setEmail(String email) {
		   this.email = email;
	   }
	   public String getPassword() {
		   return password;
	   }
	   public void setPassword(String password) {
		   this.password = password;
	   }
	   public String getOccupation() {
		   return occupation;
	   }
	   public void setOccupation(String occupation) {
		   this.occupation = occupation;
	   }
	   public String getAddress() {
		   return address;
	   }
	   public void setAddress(String address) {
		   this.address = address;
	   }
	   public String getPhoto() {
		   return photo;
	   }
	   public void setPhoto(String photo) {
		   this.photo = photo;
	   }
	   public String getStatus() {
		   return status;
	   }
	   public void setStatus(String status) {
		   this.status = status;
	   }
	   public long getContactNo() {
		   return contactNo;
	   }
	   public void setContactNo(long contactNo) {
		   this.contactNo = contactNo;
	   }
	   
	   @Override
		public String toString() {
			return "member [memberId=" + memberId + ", firstName=" + firstName + ", lastName=" + lastName + ", gender="
					+ gender + ", dob=" + dob + ", email=" + email + ", password=" + password + ", occupation=" + occupation
					+ ", address=" + address + ", photo=" + photo + ", status=" + status + ", block=" + block + ", flat_no="
					+ flat_no + ", contactNo=" + contactNo + "]";
		}
}
