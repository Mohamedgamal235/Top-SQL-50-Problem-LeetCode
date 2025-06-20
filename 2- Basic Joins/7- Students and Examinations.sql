SELECT  st.student_id , 
        st.student_name , 
        sub.subject_name  , 
        COUNT(e.subject_name) AS attended_exams 
FROM Students st
CROSS JOIN Subjects sub
LEFT JOIN Examinations e 
ON st.student_id = e.student_id
    AND e.subject_name = sub.subject_name
GROUP BY st.student_id , st.student_name , sub.subject_name
ORDER BY st.student_id , sub.subject_name 