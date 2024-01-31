DROP TABLE IF EXISTS experience CASCADE;
CREATE TABLE IF NOT EXISTS resume (
    resume_name varchar(512),
    resume_url varchar(512),
    resume_img varchar(2048),
    resume_id varchar(20),
    resume_desc varchar(8192),
    resume_type varchar(4)
);
-- INSERT STATEMENTS FOR EXPERIENCE/EDUCATION HERE

insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'December 2022 – Present: Associate System Administrator at Northrop Grumman - Space Systems', 
    'https://www.northropgrumman.com/who-we-are/business-sectors/space-systems', 
    'https://en.wikipedia.org/wiki/File:DSP_Phase3.jpg',
    'NGSPSA', 
    'As a System Administrator at Northrop Grumman Space Systems, I developed patching and deployment automation for RHEL 7/9 systems. I also oversee various architecture efforts involving VMware vSphere technologies, and how to secure them and make them highly available in an automated fashion. I also developed alternative methods of using RSA Authentication Manager to ensure that all of our devices could use MFA.', 
    'EXPR'
);

insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'Summer 2022 – December 2022: Intern at Northrop Grumman - Space Systems', 
    'https://www.northropgrumman.com/who-we-are/business-sectors/space-systems', 
    'https://en.wikipedia.org/wiki/File:DSP_Phase3.jpg',
    'NGSPI', 
    'As an intern at Northrop Grumman Space Systems, I wrote ansible automation to fill in the gaps of building a full stack, such as using pyserial to interact with devices before they had network conectivity. I also wrote automation for user management to determine what users needed to be locked out.', 
    'EXPR'
);

insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'Summer 2021: Intern at Numerica - Spyglass Team', 
    'https://www.numerica.us/air-defense/', 
    'https://s11967.pcdn.co/wp-content/uploads/2022/10/Spyglass-Radar-Numerica-Corporation-2-300x200.jpg',
    'NUMERICA', 
    'At Numerica, I was tasked with fixing a kernel module that did not have multi-channel support for an FPGA that supported 8 channels. I also developed a program using PyVISA to monitor the temperature of the radar I worked with. Finally, I wrote systemd services and ansible automation to minimize the time it took to turn on the radar. The time went from around 1 hour to turn on the radar to 15 minutes.', 
    'EXPR'
);

insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'Feburary 2023 – Present: Information Security Major at Western Governors University', 
    'https://www.wgu.edu/online-it-degrees/cybersecurity-information-assurance-bachelors-program.html', 
    'https://www.geteducated.com/wp-content/uploads/2019/11/Logo_Western-Governors-University-300x222.png',
    'WGU', 
    'At Western Governors University (WGU), I am learning cybersecurity laws, ethics, and techniques to better serve my current and future customers in ensuring that their data is secure, all while working full time.', 
    'EXPR'
);

insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'August 2021 – December 2022: Computer Science Major at CU Boulder', 
    'https://www.colorado.edu/cs/', 
    'https://www.colorado.edu/cs/sites/default/files/styles/medium/public/block/screen_shot_2021-02-22_at_11.49.53_am_0.png?itok=y2tzES1o',
    'CUBOULDER', 
    'At CU Boulder, I learned complex mathematics like Calculus and Linear algebra. I also learned C++ data structures as well as web development best practices and the SQL language.', 
    'EXPR'
);

-- INSERT STATEMENTS FOR PROJECTS/CERTIFICATIONS HERE
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'November 2023 - Present: Project TekPossible', 
    'https://github.com/TekPossible-ES/tekpossible-aws', 
    'https://www.inrhythm.com/wp-content/uploads/2023/07/aws-cdk-1024x618.png',
    'TEKPOSSIBLE', 
    'This resume was designed by me using Express.js and CDK/CloudFormation for the infrastructure. Any change that is made to this website is made via a CI/CD Pipeline using Codecommit, codedeploy, codebuild, and codepipeline. These resources and the infrastructure that powers the actual website is deployed and managed via the CDK(I am using TypeScript). The code for the website and the infrastructure are available at the link in this card.', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'October 2023 - RedHat Certified Engineer (RHCE)', 
    'https://www.redhat.com/en/services/certification/rhce', 
    'https://images.credly.com/size/340x340/images/19c4e804-54fe-4857-b022-7cfd5520596c/image.png',
    'RHCE', 
    'A Red Hat® Certified Engineer (RHCE®) is a Red Hat Certified System Administrator (RHCSA) who is ready to automate Red Hat® Enterprise Linux® tasks, integrate Red Hat emerging technologies, and apply automation for efficiency and innovation. The credential is earned after successfully passing the Red Hat Certified Engineer (RHCE) exam (EX294)', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'September 2023 - RedHat Certified Systems Administrator (RHCSA)', 
    'https://www.redhat.com/en/services/certification/rhcsa', 
    'https://images.credly.com/size/340x340/images/572de0ba-2c59-4816-a59d-b0e1687e45ee/image.png',
    'RHCSA', 
    'An IT professional who has earned the Red Hat® Certified System Administrator (RHCSA®) is able to perform the core system administration skills required in Red Hat Enterprise Linux environments. The credential is earned after successfully passing the Red Hat Certified System Administrator (RHCSA) Exam (EX200).', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'June 2019 Cisco Certified Network Associate (CCNA)(EXPIRED)', 
    'https://www.cisco.com/c/en/us/training-events/training-certifications/certifications/associate/ccna.html', 
    'https://images.credly.com/size/340x340/images/683783d8-eaac-4c37-a14d-11bd8a36321d/ccna_600.png',
    'CCNA', 
    'Earners of Cisco CCNA - Implementing and Administering Cisco Solutions (CCNA) have demonstrated knowledge and skills related to network fundamentals, network access, IP connectivity, IP services, security fundamentals, and automation and programmability.', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'June 2019 Cisco Certified Network Associate - Routing and Switching (CCNA-RS)(EXPIRED)', 
    'https://www.cisco.com/c/en/us/training-events/training-certifications/certifications/associate/ccna.html', 
    'https://images.credly.com/size/340x340/images/a31c0301-ff96-4cee-9435-0a4b40ce6e66/cisco_ccna_R_26S.png',
    'CCNARS', 
    'This certification validates the skills required of associate-level network professionals to understand network fundamentals, LAN switching technologies, IPv4 and IPv6 routing technologies, WAN technologies, infrastructure services, security, and management.', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'CompTIA Security+', 
    'https://www.comptia.org/certifications/security', 
    'https://images.credly.com/size/340x340/images/74790a75-8451-400a-8536-92d792c5184a/CompTIA_Security_2Bce.png',
    'SECPLUS', 
    'Earners of the CompTIA Security+ certification have the knowledge and skills necessary to perform core security functions required of any cybersecurity role. CompTIA Security+ professionals know how to identify and address potential threats, attacks and vulnerabilities and they have established techniques in risk management, risk mitigation, threat management and intrusion detection.', 
    'PROJ'
);
insert into resume(resume_name,resume_url, resume_img, resume_id, resume_desc, resume_type) values (
    'ITILv4 Foundation', 
    'https://www.axelos.com/certifications/itil-service-management/itil-4-foundation', 
    'https://certwizard.com/sites/default/files/2020-05/ITIL-4-Foundation-certwizard.png',
    'ITIL', 
    'ITIL 4 Foundation introduces an end-to-end operating model for the creation, delivery and continual improvement of technology-enabled products and services.', 
    'PROJ'
);
