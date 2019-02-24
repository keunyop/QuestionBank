-- VERSION
insert into version (test_id, ver_nbr, ver_nm, created_date, modified_date) values ('1', '1', 'AWS-Developer V12.75', now(), now());
insert into version (test_id, ver_nbr, ver_nm, created_date, modified_date) values ('1', '2', 'AWS-Certified-Developer-Associate V13.25', now(), now());
insert into version (test_id, ver_nbr, ver_nm, created_date, modified_date) values ('1', '3', 'AWS-Certified-Developer-Associate V13.95', now(), now());
insert into version (test_id, ver_nbr, ver_nm, created_date, modified_date) values ('3', '1', '아키텍처', now(), now());

-- QUESTION
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('1', '2', '1', 'Can you configure an RDS Read Replica using CloudFormation templates?', 'AWS CloudFormation gives developers and systems administrators an easy way to create and manage collections of AWS resources. You can now set Read Replicas for your databases with RDS when you create a new CloudFormation template.You can start using it with the sample template of CloudFormation.', 'https://s3.amazonaws.com/cloudformation-templates-us-east1/RDS_MySQL_With_Read_Replica.template', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('1', '2', '2', 'A user has configured ELB. Which of the below mentioned protocols the user can configure for ELB health checks while setting up ELB?', 'An ELB performs a health check on its instances to ensure that it diverts traffic only to healthy instances. The ELB can perform a health check on HTTP, HTTPS, TCP and SSL protocols.', 'http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('1', '2', '3', 'The AWS console for DynamoDB enables you to do all the following operations, except:', 'The AWS console for DynamoDB enables you to do all the above operation but not Importing Data from other databases or from files and it is not possible to do it.', 'http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ConsoleDynamoDB.html', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('1', '2', '4', 'You need to develop and run some new applications on AWS and you know that Elastic Beanstalk and CloudFormation can both help as a deployment mechanism for a broad range of AWS resources. Which of the following statements best describes the differences between Elastic Beanstalk and CloudFormation?', 'These services are designed to complement each other. AWS Elastic Beanstalk provides an environment to easily develop and run applications in the cloud. It is integrated with developer tools and provides a one-stop experience for you to manage the lifecycle of your applications. AWS CloudFormation is a convenient deployment mechanism for a broad range of AWS resources. It supports the infrastructure needs of many different types of applications such as existing enterprise applications, legacy applications, applications built using a variety of AWS resources and container-based solutions (including those built using AWS Elastic Beanstalk). AWS CloudFormation introduces two new concepts: The template, a JSON-format, text-based file that describes all the AWS resources you need to deploy to run your application and the stack, the set of AWS resources that are created and managed as a single unit when AWS CloudFormation instantiates a template.', 'http://aws.amazon.com/cloudformation/faqs/', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('1', '2', '5', 'Which one of the following operations is NOT a DynamoDB operation?', 'In DynamoDB, DeleteItem deletes a single item in a table by primary key, but BatchDeleteItem doesn''t exist.', 'http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/operationlist.html', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('3', '1', '1', 'BXM 프레임워크는 채널에 대한 다양한 요구를 수용하면서, 표준화된 개발 환경을 제공한다. 제공하는 기능이 아닌것은?', 'BXM 프레임워크는 채널에 대한 다양한 요구를 수용하면서, 표준화된 개발 환경을 제공한다. 또한 센터컷, 배치, 후행, 스케줄러 등을 제공한다.', 'https://drive.google.com/file/d/1P3Ga8sYvExyHnj4LvhtlhJdnKLGHY62u/view', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('3', '1', '2', 'BwG 코어뱅킹 솔로션의 주요 기능이 아닌것은?', '주요 기능은 다음과 같다. 1. BXM 프레임워크는 채널에 대한 다양한 요구를 수용하면서, 죠준화된 개발 환경을 제공한다. 또한 센터컷, 배치, 후행, 스케줄러 등을 제공한다. 2. 다양한 상품 요구를 수용하는 BX PF는 상품을 설계, 개발한 후 BX CBP의 상품으로 배포한다. 3. BX CBP는 업무 기능 컴포넌트인 BX CBB를 제공하여, 고객이 요구하는 서비스를 유연하고 빠르게 개발 할 수 있다.', 'https://drive.google.com/file/d/1P3Ga8sYvExyHnj4LvhtlhJdnKLGHY62u/view', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('3', '1', '3', 'PF의 특/장점이 아닌것은?', 'PF의 특/장점은 다음과 같다. 1. 독립적인 상품정보 관리, 2. 제약 없는 상품(조건) 확장, 3. 신속한 상품 출시, 4. 검증된 국내/외 사례', 'https://drive.google.com/file/d/1P3Ga8sYvExyHnj4LvhtlhJdnKLGHY62u/view', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('3', '1', '4', 'CBP의 특/장점이 아닌것은?', 'CBP의 특/장점은 다음과 같다. 1. 조립식 서비스 신규(Assemblable), 2. 데이터 정의에 의한 용건 대응(Configurable), 3. Plug-In 방식의 신규요건 대응 (Pluggable), 4. 표준화된 개발/운영 방식(Standardized)', 'https://drive.google.com/file/d/1P3Ga8sYvExyHnj4LvhtlhJdnKLGHY62u/view', now(), now());
insert into question (test_id, ver_nbr, quest_nbr, quest_txt, explanation, reference, created_date, modified_date) values ('3', '1', '5', 'CBP(Core Banking Package)는 서비스 및 기본 구성 요소 및 구성 센터가 표함 된 핵심 뱅킹 패키지 응용 프로그램이다.', 'CBP(Core Banking Package)는 서비스 및 기본 구성 요소 및 구성 센터가 표함 된 핵심 뱅킹 패키지 응용 프로그램이다.', 'https://drive.google.com/file/d/1P3Ga8sYvExyHnj4LvhtlhJdnKLGHY62u/view', now(), now());


-- EXAMPLE
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '1', '1', 'Yes, provided that you have root access.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '1', '2', 'Yes, when you create a new CloudFormation template', 'TRUE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '1', '3', 'Yes, but not for all Regions.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '1', '4', 'No, you can add the ReadReplica only when the resource is made available by CloudFormation', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '2', '1', 'All of the options', 'TRUE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '2', '2', 'TCP', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '2', '3', 'HTTPS', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '2', '4', 'SSL', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '3', '1', 'Set up alarms to monitor your table''s capacity usage.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '3', '2', 'Create, update, and delete tables.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '3', '3', 'Import Data from other databases or from files.', 'TRUE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '3', '4', 'View your table''s top monitoring metrics on real-time graphs from CloudWatch.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '4', '1', 'Elastic Beanstalk uses Elastic load balancing and CloudFormation doesn''t.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '4', '2', 'CloudFormation is faster in deploying applications than Elastic Beanstalk.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '4', '3', 'CloudFormation is much more powerful than Elastic Beanstalk, because you can actually design and script custom resources', 'TRUE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '4', '4', 'Elastic Beanstalk is faster in deploying applications than CloudFormation.', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '5', '1', 'BatchWriteItem', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '5', '2', 'DescribeTable', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '5', '3', 'BatchGetItem', 'FALSE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('1', '2', '5', '4', 'BatchDeleteItem', 'TRUE', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '1', '1', '센터컷', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '1', '2', '배치', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '1', '3', '후행', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '1', '4', '블록체인', 'true', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '1', '5', '스케줄러', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '2', '1', '고객사의 부가가치를 높여준다.', 'true', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '2', '2', 'CBB를 활용하여 고객이 요구하는 서비스를 유연하고 빠르게 개발한다.', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '2', '3', '다양한 상품 요구를 수용한다.', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '2', '4', 'BXM 프레임워크는 채널에 대한 다양한 요구를 수용하면서, 표준화된 개발 환경을 제공한다.', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '3', '1', '머신러닝을 통한 상품 추천', 'true', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '3', '2', '독립적인 상품정보 관리', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '3', '3', '제약 없는 상품(조건) 확장', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '3', '4', '신속한 상품 출시', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '3', '5', '검증된 국내/외 사례', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '4', '1', 'Standardized', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '4', '2', 'Comments', 'true', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '4', '3', 'Assemblable', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '4', '4', 'Configurable', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '4', '5', 'Pluggable', 'false', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '5', '1', 'True', 'true', now(), now());
insert into example (test_id, ver_nbr, quest_nbr, exmp_nbr, exmp_txt, answer, created_date, modified_date) values ('3', '1', '5', '2', 'False', 'false', now(), now());
