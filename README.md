# Human Resource Management System 🌐💼

This is the HRM System for Jupiter Apparel company. The system is designed using HTML, CSS, Node.js, JavaScript, Express, and MySQL to streamline HR-related tasks and enhance organizational efficiency.

## Technologies Used
- **HTML, CSS:** Fundamental technologies for building the structure and styling of the application.
  
- **Node.js, Express:** Back-end technologies that power the server-side logic and API handling.
  
- **JavaScript:** The scripting language used for dynamic and interactive functionality.
  
- **MySQL:** A relational database management system for robust data storage and retrieval.

## Features
- **Personal Information Management Module:** Efficiently manage and organize personal information of employees.
  
- **Leave Management Module:** Streamline leave requests and approvals for a more organized workflow.
  
- **Reporting Module:** Generate and analyze various reports to gain insights into HR-related data.

## Installation

To install and run the system locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/RaviniKuruppu/Human-Resource-Management-System.git
2. **Install dependencies:**
   ```bash
   cd backend
   npm install
3. **Start the application:**
   ```bash
   npm start

### Testing Login Credentials

To test the login functionality, use the following credentials:

- **User ID:** `000001`
- **Password:** `123`

### Database Setup

#### Create a MySQL Database Schema
1. Open your MySQL client (e.g., MySQL Workbench or terminal).
2. Create a new schema named `project`:
   ```sql
   CREATE DATABASE project;
   USE project;
3. Execute the `data.sql` and `table.sql` files to set up tables and initial data.
   ```sql
   SOURCE /backend/src/database/table.sql;
   SOURCE /backend/src/database/data.sql;

4. Edit the `config.js` file to include your MySQL username and password.


The frontend will be accessible at http://localhost:8000/loginPage/. 

The backend code is located in the `backend` folder, while the frontend code is in the respective `public` folder.

