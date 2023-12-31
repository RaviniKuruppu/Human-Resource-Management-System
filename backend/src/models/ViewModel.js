const {executeSQL} = require("../database/database");

class View{
    async createView(){   
        try{
            await executeSQL(`CREATE OR REPLACE VIEW employee_view AS 
                        SELECT * FROM employee emp
                        INNER JOIN employment_detail emp_d 
                        ON emp.ID=emp_d.emp_ID`,[]);
            await executeSQL(`CREATE OR REPLACE VIEW leave_initialize AS 
                        SELECT emp_ID,employment_detail.pay_grade,leave_type.annual,leave_type.casual,leave_type.maternity,leave_type.noPay
                        FROM employment_detail
                        Left Join leave_type
                        ON employment_detail.pay_grade=leave_type.pay_grade;`);
            await executeSQL(`CREATE OR REPLACE VIEW leave_view AS 
                        SELECT leave_d.req_No,
                            leave_d.emp_ID,
                            CONCAT(emp.first_name,' ',emp.middle_name,' ',emp.last_name) as full_name,
                            emp_d.department,
                            emp_d.job_title,
                            leave_d.leave_type,
                            leave_d.leave_date,
                            leave_d.reason,
                            leave_d.status,
                            leave_c.annual_count,leave_type.annual,
                            leave_c.casual_count,leave_type.casual,
                            leave_c.maternity_count,leave_type.maternity,
                            leave_c.noPay_count,leave_type.noPay
                        FROM leave_detail leave_d
                        Left JOIN employment_detail emp_d 
                        ON leave_d.emp_ID=emp_d.emp_ID
                        Left Join employee emp
                        ON leave_d.emp_ID=emp.ID
                        Left join leave_count leave_c
                        ON leave_d.emp_ID=leave_c.emp_ID
                        Left join leave_type
                        ON emp_d.pay_grade = leave_type.pay_grade`,[]);
                    }
        catch(e){
            console.log(e);
        }
    }
}
module.exports = {View}