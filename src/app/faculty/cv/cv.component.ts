import { Component } from '@angular/core';

@Component({
  selector: 'app-cv',
  templateUrl: './cv.component.html',
  styleUrl: './cv.component.css'
})
export class CvComponent {

  feedbackContainers: string[] = [];
  feedbackPosted: boolean = false; // Track if feedback has been posted

  information = {
    profilePicture: '/assets/Man2.png',
    name: 'Professor X',
    departmen: 'College of Computer Studies',
    position: 'IT Educator',
    yearsInTeaching: '11 years',
    birthdate: 'September 07, 1990',
    contactNumber: '09217627816',
    gmail: 'professorxgordon college.edu.ph',
  };

  experties ={
    skill1: 'css',
    skill2: 'htnl',
    skill3: 'javascript',
    skill4: 'angular',
    skill5: 'react',
  }

  honorsAndAwards = {
    award1: "Board Exam Passer",
    award2: "Manga Cum Laude",
    award3: "Manga Cum Laude",
  }

  certifications = {
    cert1: 'Microsoft Certified Educator (MCE)',
    cert2: 'Certified Associate in Project Management (CAPM)',
    cert3: 'Certified Associate in Project Management (CAPM)',
  }

  educationalAttainment = {
    degree1: 'Master in Information Technology (CAR)',
    school1: 'Ateneo de Manila University',
    degree2: 'Bachelor of Science in Information Technology',
    school2: 'Ateneo de Manila University',
  }

  industryExperience = {
    school1: 'Gordon College',
    employment1: 'Part-time Instructor',
    workingYear1: '2013 - 2019',
    school2: 'Gordon College',
    employment2: 'Full-time Instructor  ',
    workingYear2: '2019 - Present',
  }

  courseHandled = {
    course1: 'Computer Programming I',
    course2: 'Computer Programming II',
    course3: ' Introduction to Computing',
    course4: 'PC Troubleshooting with Basic Electronics',
    course5: 'Information Management',
    course6: 'Data Structures and Algorithms',
    course7: 'Object Oriented Programming',
  }

  researchAndCommunityExtensions = {
    research1: 'Exploring the Potential of Blockchain Technology for Supply Chain Management',
    detail1: 'This study aims to investigate how blockchain technology can enhance transparency, traceability, and efficiency in supply chain management processes.',
    research2: 'Hackathons and Tech Meetups',
    detail2: 'Organizing hackathons and tech meetups where developers, designers, and tech enthusiasts come together to collaborate on projects, share knowledge, and network with industry professionals.',
  }



  constructor() {}

  postFeedback(feedback: string): void {
    if (feedback.trim() !== '') {
      this.feedbackContainers.push(feedback);
      this.feedbackPosted = true; // Set feedbackPosted to true after posting feedback
    } else {
      alert('Please enter your feedback.');
    }
  }
}
