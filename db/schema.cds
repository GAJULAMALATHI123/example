// namespace my.bookstore;
// entity Books{
//     KeyID:UUID;
//     title:String;
//     genre:Genre;
//     pubCountry:String(3);
//     stock:NoofBooks;
//     price:Price;
//     isHarder:Boolean;
// }
// type Genre:Integer enum{
//     fiction=1;
//     nonfiction=2;
// }
// type Price{
//     amount:Decimal;
//     currency:String(3);
// }

// type NoofBooks:Integer;
namespace Employee;
using { managed} from '@sap/cds/common';
entity Employees{
    key emp_id:Integer;
    emp_name:String(40);
    emp_age:Integer;
    emp_loc:String(40);
    project:Association to many Projects on project.empl=$self;
}
entity Projects:managed{
    empl:Association to Employees;
    key proj_code:String(3);
    proj_name:String(20);
    team_size:Integer;
}