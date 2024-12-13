-- 8.1 Obtain the names of all physicians that have performed a medical procedure they have never been certified to perform.
SELECT Physician.Name,Physician.Position,
Trained_In.Treatment as Speciality,
Trained_In.Treatment as Speciality_name

 FROM Physician
JOIN Trained_In
ON Physician.EmployeeID = Trained_In.Physician
JOIN Procedures
ON Procedures.Code = Trained_In.Treatment
JOIN Undergoes
ON Procedures.Code = Undergoes.Physician
WHERE Undergoes.Physician <> Trained_In.Treatment 
;

-- 8.3 Obtain the names of all physicians that have performed a medical procedure that they are certified to perform, 
-- but such that the procedure was done at a date (Undergoes.Date) after the physician's certification expired 
-- (Trained_In.CertificationExpires).
(MySQL)
SELECT p.name, a.name, certificationexpires, date
FROM physician p 
JOIN trained_in t ON p.employeeid=t.physician
JOIN undergoes u ON p.employeeid=u.physician
JOIN procedures a ON a.code=t.treatment
WHERE date>certificationexpires;


-- 8.4 Same as the previous query, but include the following information in the results: Physician name, name of procedure, 
-- date when the procedure was carried out, name of the patient the procedure was carried out on, and date when the 
-- certification expired.

(MySQL)
SELECT p.name, a.name, certificationexpires, c.name patient_name, date
FROM physician p 
JOIN trained_in t ON p.employeeid=t.physician
JOIN undergoes u ON p.employeeid=u.physician 
JOIN patient c ON u.patient=c.SSN
JOIN procedures a ON a.code=t.treatment
WHERE date>certificationexpires;






