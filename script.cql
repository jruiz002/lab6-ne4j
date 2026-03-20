CREATE
// STUDENTS
(S1:Student {id:'S1', name:'Juan Perez', age:22, email:'[juan@mail.com](mailto:juan@mail.com)', country:'Guatemala'}),
(S2:Student {id:'S2', name:'Maria Lopez', age:25, email:'[maria@mail.com](mailto:maria@mail.com)', country:'Mexico'}),
(S3:Student {id:'S3', name:'Carlos Ruiz', age:28, email:'[carlos@mail.com](mailto:carlos@mail.com)', country:'Colombia'}),
(S4:Student {id:'S4', name:'Ana Torres', age:21, email:'[ana@mail.com](mailto:ana@mail.com)', country:'Peru'}),
(S5:Student {id:'S5', name:'Luis Gomez', age:30, email:'[luis@mail.com](mailto:luis@mail.com)', country:'Chile'}),

// COURSES
(C1:Course {id:'C1', title:'Python Básico', duration:'20h', level:'Beginner', price:50}),
(C2:Course {id:'C2', title:'Data Science', duration:'40h', level:'Intermediate', price:100}),
(C3:Course {id:'C3', title:'Machine Learning', duration:'50h', level:'Advanced', price:150}),
(C4:Course {id:'C4', title:'Web Development', duration:'30h', level:'Beginner', price:80}),
(C5:Course {id:'C5', title:'SQL y Bases de Datos', duration:'25h', level:'Intermediate', price:70}),

// INSTRUCTORS
(I1:Instructor {id:'I1', name:'Pedro Martinez', experience:'10 años', specialty:'Python', rating:4.8}),
(I2:Instructor {id:'I2', name:'Laura Diaz', experience:'8 años', specialty:'Data Science', rating:4.7}),
(I3:Instructor {id:'I3', name:'Jorge Castillo', experience:'12 años', specialty:'ML', rating:4.9}),
(I4:Instructor {id:'I4', name:'Sofia Herrera', experience:'6 años', specialty:'Web', rating:4.6}),
(I5:Instructor {id:'I5', name:'Diego Morales', experience:'9 años', specialty:'Databases', rating:4.7}),

// CATEGORIES
(CAT1:Category {id:'CAT1', name:'Programming', description:'Cursos de programación', difficulty:'Media', popularity:'Alta'}),
(CAT2:Category {id:'CAT2', name:'Data Science', description:'Ciencia de datos', difficulty:'Alta', popularity:'Alta'}),
(CAT3:Category {id:'CAT3', name:'AI', description:'Inteligencia Artificial', difficulty:'Alta', popularity:'Media'}),
(CAT4:Category {id:'CAT4', name:'Web', description:'Desarrollo web', difficulty:'Media', popularity:'Alta'}),
(CAT5:Category {id:'CAT5', name:'Databases', description:'Bases de datos', difficulty:'Media', popularity:'Media'}),

// RELACIONES STUDENT -> COURSE
(S1)-[:ENROLLED {since:2024}]->(C1),
(S2)-[:ENROLLED {since:2023}]->(C2),
(S3)-[:ENROLLED]->(C3),
(S4)-[:ENROLLED]->(C4),
(S5)-[:ENROLLED]->(C5),

// RELACIONES RATED
(S1)-[:RATED {score:5}]->(C1),
(S2)-[:RATED {score:4}]->(C2),
(S3)-[:RATED {score:5}]->(C3),

// INSTRUCTOR -> COURSE
(I1)-[:TEACHES]->(C1),
(I2)-[:TEACHES]->(C2),
(I3)-[:TEACHES]->(C3),
(I4)-[:TEACHES]->(C4),
(I5)-[:TEACHES]->(C5),

// COURSE -> CATEGORY
(C1)-[:BELONGS_TO]->(CAT1),
(C2)-[:BELONGS_TO]->(CAT2),
(C3)-[:BELONGS_TO]->(CAT3),
(C4)-[:BELONGS_TO]->(CAT4),
(C5)-[:BELONGS_TO]->(CAT5),

// STUDENT -> STUDENT
(S1)-[:FRIEND]->(S2),
(S2)-[:FRIEND]->(S3),
(S3)-[:FRIEND]->(S4),
(S4)-[:FRIEND]->(S5),
(S5)-[:FRIEND]->(S1);
