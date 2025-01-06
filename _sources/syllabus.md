# 🚩 Syllabus

## Course Goals
1. **Cadets shall design, build, and debug hardware/software to drive peripheral devices.**
2. **Cadets shall design, build, and debug an advanced digital system.** Three different approaches will be taken:
   - a fully custom-built hardware solution,
   - using a general-purpose software processor, and
   - using a general-purpose software processor combined with custom-built hardware.
3. **Express the tradeoffs between choosing a microcontroller versus a custom digital system.**

## Course Objectives
1. **Design and implement a complex, structured, synthesizable digital system that meets defined requirements.**
2. **Use contemporary software tools to debug a digital system design and verify that a digital system meets defined requirements.**
3. **Apply structured design techniques to design functional hardware interfaces and to provide the basis for efficient, modular software programs.**
4. **Analyze and describe the timing, clock, and synchronization requirements for a given digital system.**
5. **Design and implement a digital system using:**
   - a fully custom-built hardware solution,
   - a general-purpose software processor, and
   - a general-purpose software processor combined with custom-built hardware.
6. **Evaluate, analyze, and modify a given digital system to improve area, power, or speed.**
7. **Express the tradeoffs between choosing a microcontroller versus a custom digital system.**


## Course Prerequisites
ECE 382 - Embedded Systems I

## Course Schedule
The course schedule is [here](schedule.md)

## Course Materials and Websites
- **Course Text**: *RTL Hardware Design Using VHDL: Coding for Efficiency, Portability, and Scalability* by Pong P. Chu (ISBN 0471720925)  Free on O'Reilly Books through [DoD Libraries](https://daf.dodmwrlibraries.org/databases?q=o%27reilly&%3Fq=o%27reilly&g=none)
- **Course URL**: [https://usafa-ece.github.io/ece383/](https://usafa-ece.github.io/ece383/) — this site has the course schedule, course handouts, and course assignments.  This year we're updating the course website to the Jupyter Book format used in other DFEC courses.  In case you encounter something that's missing or unclear it may be helpful to access the previous course website at [https://georgeyork.github.io/ECE383_web/](https://georgeyork.github.io/ECE383_web/).
- **Microsoft Teams**: The 383 Teams site will be used for course announcements. The virtual class sessions will be held in your section's 383 Teams site when we do not have in-person class.
- **Blackboard**: Blackboard will only be used for the "official" grades.
- **Gradescope**: Gradescope will be used to grade most assignments.
- **Github**: You will use Github for your software repository.

## Grade Distribution and Policy

### Grading
Grading will primarily be performed in Gradescope, with official grades listed in Blackboard.

### Grade Distribution
The **Grade distribution** for this course is shown below.

| Component             | Prog | Final |
|-----------------------|------|-------|
| GRs                   | 40   | 25    |
| Lab 1                 | 20   | 10    |
| Lab 2                 | 20   | 10    |
| Lab 3                 | 0    | 10    |
| Lab 4                 | 10   |       |
| Quizzes / Assignments | 20   | 10    |
| Final Project         |      | 25    |
| Subjective            |      |       |
| **TOTAL**             | 100  | 100   |

<br>

Electrical and Computer Engineering courses are contract graded using the following 100 point scale.
<br>

|     Grade       |     Grade      |     Grade       |     Grade     |   
|:---------------:|:--------------:|:---------------:|:-------------:|
| 93 <= A <= 100  | 87 <= B+ < 90  | 77 <= C+ < 80   | 60 <= D < 70  | 
| 90 <= A- < 93   | 83 <= B < 87   | 73 <= C < 77    | 0 <= F < 60   | 
|                 | 80 <= B- < 83  | 70 <= C- < 73   |               |


## Labs ##

The labs in this course are very hardware intensive. A disciplined approach to design, implementation and testing are key to your success! The Big Bang method, or wiring and coding something up and debugging it until it works, usually does not work. We do allow you to turn in incomplete labs, but up to 25% can be deducted for not meeting requirements (See lab grading and late work policies below).

## Exams ##

All exams are closed textbook and notes. Both laboratory and classroom work will appear on exams. For missed GRs, the following policies are outlined:

- **Scheduled Absence**: If you know that you will be unable to take the GR during the scheduled GR period, you are required to inform your instructor as soon as possible before the GR to schedule a make-up exam.
- **Unscheduled Absence**: If you miss the GR for reasons beyond your control (e.g., hospitalization, emergency leave, delayed field trip return, etc.), you must contact DFEC (x3190) within two working days to schedule a make-up. Exceptions can only be granted by the Department Head.

## Miscellaneous

This course is designed to help in your development as a computer or an electrical engineer. As such, we introduce economic considerations as well as manufacturability and sustainability during the first half of the semester and re-emphasize these as we progress through the semester. Feel free to provide feedback on the lessons and labs at any time. If you have ideas to improve or enhance the course, please let me know. The class builds on concepts from the prerequisites, so it is important for you to seek help as soon as you need it. Procrastination is truly the enemy in a hardware design course. A little foresight and planning and a lot of effort will result in an extremely rewarding experience serving as the basis for future microprocessor design work.

## Primary Communication and Control (C2)
All communication and course material will be provided through a course and section Team. Additionally, videos will be uploaded to a YouTube channel for your convenience. Lastly, Github will be used for cadets to provide their source code for laboratories.

## Collaboration Policy

Unless specifically directed otherwise, the collaboration policy for this course is:

- For all assignments in this course, unless otherwise noted on the assignment, you may collaborate with any other cadets currently enrolled in ECE 383. We expect all graded work to be in your own work. Copying another person’s work, with or without documentation, will result in NO academic credit. Furthermore, copying without attribution is dishonorable and will be dealt with as an honor code violation.
- GRs are individual efforts. No collaboration is allowed while taking these exams. All electronic devices (phones, smartwatches, computers, tablets, etc.) must be placed out of sight for the duration of the event. If any electronic device is seen during the event, the student will receive a zero for that effort.
- Authorized resources include any material from the ECE 383 course site and online sources regarding VHDL/C/C++ programming syntax only. This does not include any solutions or solution stubs for challenges similar to those asked in any assignments.
- You may use ChatGPT and other LLMs to write test cases and help you debug.   You may not use it to write source code for you (e.g. VHDL or C/C++).

## Documentation Requirements

**Documentation Requirements**: You must document all help received from any sources other than your instructor or instructor-provided course materials (including your textbook). 
- Each documentation statement must be specific enough to explicitly describe what assistance was provided, how it was used to complete the assignment, and who provided the assistance.
- If no help was received on this assignment, the documentation statement must state “None.”
- If you checked answers with anyone, you must document with whom on which problems. You must document whether you made any changes or not.  If you did make changes, you must document the problems you changed and the reasons why.
- Vague documentation statements will result in a 5% deduction on the assignment.

### Sample Documentation 
Consider the following examples when writing your own detailed documentation statements:

**Bad Example**:  Cadet McFly explained how the factorial worked.
<br>
**Good Example**: Cadet McFly explained how a recursive function worked conceptually, using diagrams and the assignment materials. He did not look at my code nor did I look at his code during this discussion.

**Bad Example**: : Cadet McFly helped fix my factorial() method.
<br>
**Good Example**: Cadet McFly helped fix my factorial() method by looking at my code** and finding that I had n > 0 instead of n >= 0 on line 85. _Note: A situation such as this may result in **less than full credit for the factorial() method, but due to the documentation statement there is no violation of the honor code._

**Bad Example**: : Cadet McFly and I worked together on the factorial() method.
<br>
**Good Example**: Cadet McFly and I worked together on the factorial() method, each contributing equally to its development. Prior to this help, neither of our factorial() methods was working. My factorial() method is now nearly identical to Cadet McFly's factorial() method. _Note: In a situation such as this, at most half-credit would be earned for the factorial() method, but due to the documentation statement there is no violation of the honor code._

**Bad Example**: : Cadet McFly showed me how the factorial() method works.
<br>
**Good Example**: Cadet McFly showed me how the factorial() method works by letting me look at his code. Prior to this help, my own factorial() method was not working.  My factorial() method is now nearly identical to Cadet McFly's factorial() method. _Note: In a situation such as this, no points would be earned for the factorial() method, but due to the documentation statement there is no violation of the honor code._

**Bad Example**: : Cadet McFly showed me how the factorial() method works.
<br>
**Good Example**: Cadet McFly showed me how the factorial() method works by looking at my code and talking me through each line as I wrote it. Prior to this help my own factorial() method was wrong.  My factorial() method is now nearly identical to Cadet McFly's factorial() method. _Note: In a situation such as this, no points would be earned for the factorial() method, but due to the documentation statement there is no violation of the honor code._

## Extra Instruction (EI)

Schedule EI with an instructor if you are having difficulty with the course material.  You must have read the assignment and attempted the homework before requesting EI.  Note:  You are responsible for material if you miss class, so get notes from someone in your section.  For example, you miss the lesson where the instructor announces a quiz for the next lesson or the instructor assigns homework due next lesson.  Even though you missed the lesson, you are still responsible for the quiz, homework, or any other assignments made.  It is in your best interest to check with your classmates after an absence.  After you’ve read the assignment, attempted the homework, and checked with your classmates, you may then schedule EI if you have difficulty with the material—not to make up a class you missed.

## CAS Policy  
For CAS notification, email your instructor prior to your absence and include the lesson number, the date, and the reason (descriptive reason—don’t just send a CAS code or SCA number) as soon as possible, preferably before the absence occurs.  It is your responsibility to check your SCA to see if instructor permission is required.  If it is, you must make the request prior to your absence.  If you miss class, you are responsible for all material (e.g. assignments, notes, announcements, handouts, etc.) covered in class.  Please check with another cadet in your section to find out what you missed.  

When a cadet is absent on the day that an assignment is due, or on the date of a quiz or GR, the cadet is responsible for meeting the following standards: 
- Scheduled Absence: If a cadet will miss any graded event due to a scheduled absence such as an SCA, sport team trip, or scheduled lasik surgery, the cadet is expected to complete all work BEFORE the absence.  
- Unscheduled Absence: If a cadet misses a graded event for an unscheduled reason such as AOC approved bedrest or a family emergency, the cadet must complete all work on the first full class day that they return to duty in order to avoid a late penalty.  For example, if a cadet is on AOC bedrest for a GR on M17 and can return to duty on T17 or M18, the cadet is expected to make up the work by M18.
- Unique Circumstances: For circumstances that do not fall under either of these broad categories (e.g. concussion protocol), the cadet is expected to communicate early and often with the instructor.  The instructor and course director will work with the cadet on a course of action.

## Late Work Policy
All work is due as shown on Gradescope. If problems arise with graded assignments, see your instructor in advance. 
- The cutoff for on-time submission is usually 2359 on the due date but check Gradescope for official due dates & times. 
- Late days are counted in 24-hour periods. Submitting between 23:59:01 on the due date and 23:59:00 the next day is one day late, and so on.
- You are given 5 grace days (self-granted extensions) which you can use to give yourself extra time without penalty. No more than 3 grace days can used for each assignment.
- Instructor-granted extensions are only considered after all grace days are used and only given in exceptional situations.
- Late work handed in when you have run out of grace is discounted up to 20% for the first day late and up to 10% per day late thereafter.
- Every assignment has a hard deadline; 4 calendar days past the original due date. 
- Late submissions (penalty or not) are not accepted after the hard deadline or after the solution to the assignment is published. No late submissions (penalty or not) will be accepted for the assignments right before GRs.

## Parting Thoughts
This course is designed to help you in your development as an electrical and computer engineer. Feel free to provide feedback on the lessons and labs at any time. If you have ideas to improve or enhance the course, please let me know. The class builds on concepts from the prerequisites, so it's important that you seek help as soon as you need it. Procrastination is truly the enemy in any engineering course. A little foresight and planning and a lot of effort will result in an extremely rewarding experience serving as the basis for future embedded systems design work.

Good luck!


