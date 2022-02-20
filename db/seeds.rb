# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([{name: "Stan Recruiter", password: "password", email: "stan@email.com", candidate: false}])
User.create([{name: "Kenny Candidate", password: "password", email: "kenny@email.com", candidate: true}])
User.create([{name: "Eric Recruiter", password: "password", email: "eric@email.com", candidate: false}])
User.create([{name: "Kyle Candidate", password: "password", email: "kyle@email.com", candidate: true}])

Recruiter.create(user_id: 1, company_name: "Stan's company")
Recruiter.create(user_id: 3, company_name: "Eric's company")

Candidate.create(user_id: 2)
Candidate.create(user_id: 4)

Opportunity.create(recruiter_id: 1, job_title: "Software Engineer", job_description: "Writes software")
Opportunity.create(recruiter_id: 1, job_title: "Software Support Engineer", job_description: "Supports software")
Opportunity.create(recruiter_id: 2, job_title: "QA Engineer", job_description: "Tests software")
Opportunity.create(recruiter_id: 2, job_title: "Senior Database Architect", job_description: "Does data")

Offer.create(opportunity_id: 1, candidate_id: 1)
Offer.create(opportunity_id: 1, candidate_id: 2)
Offer.create(opportunity_id: 2, candidate_id: 1)
Offer.create(opportunity_id: 2, candidate_id: 2)
Offer.create(opportunity_id: 3, candidate_id: 1)
Offer.create(opportunity_id: 4, candidate_id: 2)
