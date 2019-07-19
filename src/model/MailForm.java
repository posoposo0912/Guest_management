package model;

public class MailForm  {
	// FIXME email �`���ŃN���X���g��
	public String email;
	public String name;
	
	public MailForm() {}

	public MailForm(String name, String email) {
		this.name = name;
		this.email = email;
	}
	
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	public void setName(String name) {
		this.name = name;
		
	}
	/**
	 * @return the email
	 */
	public String getEmail() { return email; }
	public String getName() { return name; }
}
