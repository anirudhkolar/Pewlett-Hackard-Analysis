# Pewlett-Hackard-Analysis

REPORT

1.	Overview of the analysis: Explain the purpose of this analysis.

The purpose of this analysis was to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.



2.	Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

•	Many of the retiring employees have a tenure of 10-20+ years, which could mean that Pewlett-Hackard takes great care of its employees and fosters a work environment where each individual feels valued and is able to flourish.

•	Many of the retiring employees have received promotions, which could mean that Pewlett-Hackard offers great opportunities for career advancement.

•	Most of the retiring employees are either Senior Engineers or Senior Staff, which makes sense as they likely have the most experience and have been promoted as a result.

•	Most of the employees eligible for mentorship are in positions of seniority, i.e. Senior Staff, Senior Engineer, or Technique leader. This makes sense, because it indicates they are proficient in their field and therefore they are ready to train the new, up and coming employees. 



3.	Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The number of retirees whose roles need to be filled is 90398, according to the unique_titles table. An easy way to compute this would be to select count(emp_no) from unique_titles.

o	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

The number of mentorship eligible employees on the verge of retirement is very deficient in comparison to the number of roles needed to be filled due to the silver tsunami. A better way to run determine eligibility for the mentorship program would be to increase the age range of eligibility for more employees. This would mean filtering across a greater date range in the Where clause while creating the mentorship_eligibility table. E.g. we might query, where de.to_date = '9999-01-01' / and e.birth_date between '1965-01-01' and '1970-12-31'.

