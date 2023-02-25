How to solve a dataset of around 9266 rows which is having two columns with employee id and supervisor employee id and I am supposed to draw a employee hierearchy structure of the organisation?



SELECT a.emplid,a.supervisor_employee_id,b.supervisor_employee_id,c.supervisor_employee_id,d.supervisor_employee_id,
e.supervisor_employee_id,f.supervisor_employee_id,g.supervisor_employee_id,h.supervisor_employee_id,
i.supervisor_employee_id FROM ed a
left join ed b on a.supervisor_employee_id = b.emplid
left join ed c on b.supervisor_employee_id = c.emplid
left join ed d on c.supervisor_employee_id = d.emplid
left join ed e on d.supervisor_employee_id = e.emplid
left join ed f on e.supervisor_employee_id = f.emplid
left join ed g on f.supervisor_employee_id = g.emplid
left join ed h on g.supervisor_employee_id = h.emplid
left join ed i on h.supervisor_employee_id = i.emplid;

The dataset contains 10 levels of hierarchy.
