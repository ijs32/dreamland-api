# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([{name: "Ian Boyle", email: "email.com", candidate: false}])
User.create([{name: "Ian Silber", email: "email.com", candidate: true}])

Recruiter.create(user_id: 1, company_name: "Ian B's company")

Candidate.create(user_id: 2)

Opportunity.create(recruiter_id: 1, job_title: "Software Engineer", job_description: "Writes software")

OpportunityCandidate.create(opportunity_id: 1, candidate_id: 1)

