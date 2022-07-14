package oes.db;

public class Results {
	
	
	private String username;
	private String subject;
	private int questions;
	private int correct;
	private int wrong;
	private int attempted;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getQuestions() {
		return questions;
	}
	public void setQuestions(int questions) {
		this.questions = questions;
	}
	public int getCorrect() {
		return correct;
	}
	public void setCorrect(int correct) {
		this.correct = correct;
	}
	public int getWrong() {
		return wrong;
	}
	public void setWrong(int wrong) {
		this.wrong = wrong;
	}
	public int getAttempted() {
		return attempted;
	}
	public void setAttempted(int attempted) {
		this.attempted = attempted;
	}
	@Override
	public String toString() {
		return "Results [username=" + username + ", subject=" + subject + ", questions=" + questions + ", correct="
				+ correct + ", wrong=" + wrong + ", attempted=" + attempted + "]";
	}
}
