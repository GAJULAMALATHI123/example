using {Employee} from '../db/schema';
service EmployeeManagementService{
    entity Employees as projection on Employee.Employees;
    entity Projects as projection on Employee.Projects;

}