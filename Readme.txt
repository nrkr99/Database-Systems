README:

The entities are as follows:
• Student
• Register
• Class
• Project
• Instructor
• TextBook
• Group
• Tables
• Parts
• Library
• ClassRoom
• Vendor
• Schedule
• Ratings
• Pay
• Fee

The Flow through the entities is given as follows:

• The solid lines in the E-R diagram represent the strong relationship between the entities and the dashed lines in the E-R diagram represent the weak relationships between the entities.

• The Student entity will have Student_id as the primary key and each student will register for one or many classes or projects. So, it is one to many relationship here.

• Each registration is identified by a primary key in the Register entity as Registration_id, and it will also have foreign keys that links to the Class and Project entities. A class or project may have been registered or not, so here we have zero to many relationship. 

• The student pays the fee at the beginning of the curriculum. So, from student we have a one to one relationship.

• Every Class and Project registered by the student has Class_id and Project_id respectively. With respect to these primary keys, there is a schedule for different classes and projects. Since a class and project can have only a single schedule, here we have a one to one relationship.

• The Schedule_id, a foreign key linking to the Schedule entity, in the class and project table will let the students know when and where these will be.

• The Schedule table also has the Room_id as the foreign key which links with the ClassRoom entity where the classes and projects will be held. Since there can be only one room allotted at any given time, here it is a one to one relationship.

• The Table_number, which is a foreign key in the ClassRoom entity, will be used to determine which table the students should use. Since a class room has many tables, it is a one to many relationship.

• Every student will work on the projects in groups. So, Group entity will be used to group the students. Since many students can form a group, it is a many to one relationship.

• Every group will be assigned a table with a unique Table_number. Each table will be having parts specific to the project. Since one table can only have one set of parts, it is a one to one relationship.

• The Parts entity will be bought from any of the vendors represented by Vendor_id in the Vendor entity. Since, a part can be or cannot be available with a single vendor, we have a zero to many relationship from the parts.

• The Instructor entity has Instructor_id representing each instructor who will teach and oversee a variety of classes and projects. Since a class can be taught by many instructors, here it is a many to many relationship.

• Each Class might have a different textbook and the instructor might use his favorite textbook for any of his classes. Since, an instructor can have any numbers of favorite textbooks, here it is a one to many relationship.

• The instructor will be paid in accordance with their working hours and all the rates are identical. Since an instructor can be paid only once, here it is a one to one relationship.

• At the end, the student will rate each of Instructor, Class, Project who will be having only a single instance in the Ratings entity, therefore, resulting in a one to one relationship. But, a student has to rate to various instances of instructor, class, and project, hence resulting in multiple instances of a student in the Ratings entity. 
