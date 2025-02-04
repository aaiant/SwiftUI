import SwiftUI

struct Repo : Identifiable {
    var id = UUID()
    let imageName: String
    let title: String
    let description: String
    let uploadDate: String
    let url: URL
}

struct RepoList {
    
    static let top = [
        Repo(imageName: "CsharpApp",
              title: "Application-for-Managing-an-Auto-Service",
              description: "\tIn my third year of studies at the Mathematics and Computer Science Faculty of Ovidius University in Constanța, I took a course called \"Advanced Programming Techniques\". As part of this course, I developed a project on a chosen topic, and I opted for auto service management. The project involved creating a graphical user interface using the C# programming language with Windows Forms in Visual Studio, with MS Access as the database.\n\tIt should be noted that the project is not 100% complete. To run the program, press CTRL+F5.",
              uploadDate: "February 4, 2025",
              url: URL(string: "https://github.com/aaiant/Application-for-Managing-an-Auto-Service/tree/main")!),
        
        Repo(imageName: "PacketTracer",
              title: "Packet-Tracer",
              description: "\tIn my third year of studies at the Faculty of Mathematics and Computer Science at Ovidius University in Constanța, I had a course called \"Computer Networks\". Part of the exercises we had to complete in this course were conducted in Packet Tracer.",
              uploadDate: "February 1, 2025",
              url: URL(string: "https://github.com/aaiant/Packet-Tracer")!),
        
        Repo(imageName: "Box",
              title: "Solid-Edge",
              description: "\tIn my first year of studies at the Faculty of Navigation and Naval Management, specializing in Maritime and River Navigation and Transport, at the 'Mircea cel Bătrân' Naval Academy in Constanța, I had the opportunity to study the subject 'Applied Informatics 2.' During this course, I completed various laboratory works, where I learned to use the MS Office suite (Word, PowerPoint, Excel) and to create 3D models using Solid Edge, including small simulations for each of them.",
              uploadDate: "February 2, 2025",
              url: URL(string: "https://github.com/aaiant/Solid-Edge")!),
              
        Repo(imageName: "CN",
              title: "Numerical-Methods",
              description: "\tDuring my second year at the Faculty of Mathematics and Computer Science at Ovidius University in Constanța, as part of the computer science curriculum, I studied 'Numerical Methods.' For this course, I participated in a team project focused on implementing and solving first and second-order differential equations using both Euler and Runge-Kutta methods.",
              uploadDate: "February 2, 2025",
              url: URL(string: "https://github.com/aaiant/Numerical-Methods")!),
        
        Repo(imageName: "Electricity",
              title: "Electricity-Physics",
              description: "\tIn the second year of my studies at the Faculty of Navigation and Naval Management, specializing in Maritime and Fluvial Navigation and Transport, within the 'Mircea cel Bătrân' Naval Academy in Constanța, I had the opportunity to study the courses 'Electrotechnics and Electrical Machines' and 'Electronics.' During these courses, I carried out various laboratory assignments using the Falstad.com web application to design and explain detailed electrical diagrams.",
              uploadDate: "February 1, 2025",
              url: URL(string: "https://github.com/aaiant/Electricity-Physics")!),
        
        Repo(imageName: "Databases",
              title: "Databases",
              description: "For the Back-End part, I intend to create a Repo that will include various sketches, such as conceptual schemas, logical schemas, Modeling Redundancy Design (MRD), glossaries of terms, and data dictionaries. These will be implemented in both relational and non-relational databases, illustrating the process of creating a database from scratch to actual implementation. The databases I will develop can be visualized using dbdiagram.io, making them accessible to all users. I should also mention that this Repo is continuously evolving and will be updated periodically.",
              uploadDate: "February 2, 2025",
              url: URL(string: "https://github.com/aaiant/Databases")!),
        
        Repo(imageName: "DTI",
              title: "Technical-Drawing-and-Infographics",
              description: "In my second year at the Naval Academy 'Mircea cel Bătrân,' I created various sketches, both by hand and using AutoCAD during Technical Drawing laboratory sessions.",
              uploadDate: "February 2, 2025",
              url: URL(string: "https://github.com/aaiant/Technical-Drawing-and-Infographics")!),
        
        Repo(imageName: "E_Insurance",
              title: "E-Insurance",
              description: "In my second year at the Faculty of Mathematics and Computer Science at Ovidius University in Constanța, I studied a subject called \"Object-Oriented Programming\". During this course, I had the opportunity to develop a small GUI project in Java Swing, based on a chosen theme. I chose to develop an application dedicated to car insurance.",
              uploadDate: "February 2, 2025",
              url: URL(string: "https://github.com/aaiant/E-Insurance")!)
    ]
}
