# helloworldapplication

## Note
Make sure that ruby, rails, and docker are installed.

## To run
```
docker compose build
docker compose up
```

## Database Strcuture

### Departments
- `id`
- `name`
- `location`

### Teachers
- `id`
- `name`
- `email`
- `specialization`
- `status`
- `department_id`
- `number_of_units`
- `monthly_salary`

### Students
- `id`
- `name`
- `year_level`
- `program`
- `department_id`
- `number_of_units`

### Subjects
- `id`
- `name`
- `teacher_id`
- `number_of_units`

### Sections
- `id`
- `name`
- `room`
- `time_slot`
- `subject_id`
- `number_of_students`

### Classlists
- `id`
- `student_id`
- `section_id`

---

