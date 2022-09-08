puts "Clearing old data..."
Company.destroy_all
Job.destroy_all

puts "Seeding Companies"

cmp1 = Company.create(name: 'Shutter Stock', location: '134 North Ave New York', company_type: 'Stock', contact: 2063894138, image: 'https://image.shutterstock.com/image-photo/male-hand-drawing-chart-isolated-600w-218193361.jpg')
cmp2 = Company.create(name: 'Han Korea AI', location: '1059 Hillen St Baltimore MD', company_type: 'Artificial Intelligence', contact: 5802607847, image: 'https://image.shutterstock.com/image-photo/kid-boy-using-digital-tablet-600w-2132642255.jpg')
cmp3 = Company.create(name: 'Chec Constructors', location: '297 Matuu Kenya', company_type: 'Construction', contact: 7139073890, image: 'https://image.shutterstock.com/image-photo/silhouette-construction-workers-fabricating-steel-600w-1016695744.jpg')
cmp4 = Company.create(name: 'Thai Thai Ltd', location: '2701 Broadway New York NY', company_type: 'Tech', contact: 443904689, image: 'https://image.shutterstock.com/image-photo/human-resource-manager-looking-many-600w-1838638240.jpg')
cmp5 = Company.create(name: 'Panahar Agency', location: 'Princess Anne Rd Virginia', company_type: 'recruitment agencies', contact: 6782755643, image: 'https://image.shutterstock.com/image-photo/job-search-concept-find-your-600w-341185136.jpg')
cmp6 = Company.create(name: 'Ferraros Bank', location: '324 N Great Neck Rd Virginia', company_type: 'Banking', contact: 2063894138, image: 'https://image.shutterstock.com/image-photo/hrhuman-resources-technologyonline-modern-technologies-600w-2139960475.jpg')
cmp7 = Company.create(name: 'Punjab', location: '5408 York Rd Baltimore MD', company_type: 'Communication', contact: 8565902156, image: 'https://image.shutterstock.com/image-photo/communication-between-employees-establishing-work-600w-2186089169.jpg')

puts "Seeding Jobs.."

Job.create(
  job_name: 'Stock Analyst',
  description: 'Conducting financial analysis based on current market trends and historical data, and building models to predict future performance',
  image: 'https://d3kqdc25i4tl0t.cloudfront.net/articles/content/537_322232_management.hero.jpg',
  price: 10000,
  company: cmp1)

Job.create(
  job_name: 'Equity Analyst',
  description: 'Gathering and assessing data for industry stocks and bonds, developing forecasts',
  image: 'https://d3kqdc25i4tl0t.cloudfront.net/articles/content/537_322232_management.hero.jpg',
  price: 1500,
  company: cmp1)

Job.create(
  job_name: 'AI Engineer',
  description: 'Develop intelligent algorithms that help us learn, analyze, and anticipate future events',
  image: 'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/05/bibimbap-700x500.jpg',
  price: 800,
  company: cmp2)

Job.create(
  job_name: 'AI Engineer',
  description: 'Develop intelligent algorithms that help us learn, analyze, and anticipate future events',
  image: 'https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/05/Japchae1.jpg',
  price: 1000,
  company: cmp2)

Job.create(
  job_name: 'Site Engineer',
  description: 'Main technical adviser on a construction site for subcontractors, craftspeople and operatives',
  image: 'https://www.livecareer.com/wp-content/uploads/2019/11/male-civil-engineers-discussing-project.jpg',
  price: 1500,
  company: cmp3)

Job.create(
  job_name: 'Recruiter',
  description: 'Designing and implementing the overall recruiting strategy',
  image: 'https://learn.g2.com/hubfs/recruiter%20job%20description.jpg',
  price: 12000,
  company: cmp5)

Job.create(
  job_name: 'Recruiter',
  description: 'Designing and implementing the overall recruiting strategy',
  image: 'https://learn.g2.com/hubfs/recruiter%20job%20description.jpg',
  price: 2500,
  company: cmp5)

Job.create(
  job_name: 'Software Engineer',
  description: 'Developing and directing software system validation and testing methods',
  image: 'https://miro.medium.com/max/1400/1*SzN6u2U98S4RyhWo_WyaHQ.png',
  price: 50000,
  company: cmp4)

Job.create(
  job_name: 'Marketing Director',
  description: 'Directs and implements the organizations advertising and promotional activities.',
  image: 'https://cached.imagescaler.hbpl.co.uk/resize/scaleHeight/815/cached.offlinehbpl.hbpl.co.uk/news/OMC/business-3385079_1920-820px-20191022110014467.jpg',
  price: 10000,
  company: cmp7)

Job.create(
  job_name: 'Teller',
  description: 'Responsible for managing and the reporting of financial information for an organisation.',
  image: 'https://www.ziprecruiter.com/svc/fotomat/public-ziprecruiter/cms/941729686CostAnalyst.jpg',
  price: 4500,
  company: cmp6)

puts "seeding completed"