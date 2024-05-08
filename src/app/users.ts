export class Users {
  public faculty_id: number;
  public faculty_email: string;
  public faculty_username: string;
  public faculty_password: string;

  constructor(
    faculty_id: number,
    faculty_email: string,
    faculty_password: string,
    faculty_username: string
  ) {

    this.faculty_id = faculty_id;
    this.faculty_email = faculty_email;
    this.faculty_username = faculty_username;
    this.faculty_password = faculty_password;

  }
}
