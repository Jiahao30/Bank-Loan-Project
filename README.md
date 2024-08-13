# Bank Loan Project

![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Microsoft Word](https://img.shields.io/badge/Microsoft_Word-2B579A?style=for-the-badge&logo=microsoft-word&logoColor=white)
![Microsoft PowerPoint](https://img.shields.io/badge/Microsoft_PowerPoint-B7472A?style=for-the-badge&logo=microsoft-powerpoint&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

## Project Overview
The Bank Loan Report Project aims to create a comprehensive dashboard to monitor and assess a bank’s lending activities and performance. This report provides insights into key loan-related metrics and their changes over time, aiding in data-driven decision-making, tracking the health of the loan portfolio, and identifying trends that can inform lending strategies.

## Project Structure

    ├── LICENSE
    ├── README.md            <- README.
    ├── Query                <- Code of the DB creation and queries.
    │   │
    │   ├── Create database and table.sql          <- DB creation.
    │   └── Bank Loan Report Query.sql             <- Preprocessing SQL queries.
    │ 
    ├── Reports              <- Folder containing the final reports/results of this project.
    │   │
    │   ├── Background                             <- Dashboard Backgrounds.
    │   ├── Dashboard                              <- Dashboard Previews in PNG.
    │   │    ├── Dashboard_Summary.png
    │   │    ├── Dashboard_Overview.png
    │   │    └── Dashboard_Details.png
    │   └── Bank Loan.twb                          <- Final Dashboard.
    │   
    └── Source               <- Source for this project.
        │
        ├── Data                                   <- Datasets used for this project.
        │    ├── financial_loan - original.csv
        │    └── financial_loan.xlsm
        └── Problem Statement.docx                 <- Problem Statement.

### Problem Description
In order to monitor and assess our bank’s lending activities and performance, we need to create a Bank Loan Report. This report aims to provide insights into key loan-related metrics and their changes over time. The report will help us make data-driven decisions, track our loan portfolio’s health, and identify trends that can inform our lending strategies.

Please check the details of the problems and requirements in the `Problem Statement.docx`.

### Dataset Information

The dataset used for this project contains comprehensive information about the bank’s loan applications and borrower details. The key attributes of the dataset include:

- **ID (PRIMARY KEY):** Unique identifier for each loan application.
- **Address State:** The state where the borrower resides.
- **Application Type:** The type of loan application, such as individual or joint.
- **Employment Length:** The length of the borrower’s employment.
- **Employment Title:** The title of the borrower’s employment.
- **Grade:** The grade assigned to the loan application, indicating the creditworthiness of the borrower.
- **Home Ownership:** The home ownership status of the borrower, such as rent, own, or mortgage.
- **Issue Date:** The date when the loan was issued.
- **Last Credit Pull Date:** The most recent date when the borrower’s credit was checked.
- **Last Payment Date:** The date of the last payment made by the borrower.
- **Loan Status:** The current status of the loan, such as fully paid, current, or charged off.
- **Next Payment Date:** The due date for the next payment.
- **Member Id:** Unique identifier for the borrower.
- **Purpose:** The stated purpose of the loan, such as debt consolidation, credit card refinancing, etc.
- **Sub Grade:** A finer categorisation of the loan grade.
- **Term:** The term length of the loan, such as 36 months or 60 months.
- **Verification Status:** The status of income and employment verification.
- **Annual Income:** The annual income of the borrower.
- **DTI:** The debt-to-income ratio of the borrower.
- **Installment:** The installment amount to be paid by the borrower.
- **Int Rate:** The interest rate of the loan.
- **Loan Amount:** The amount of the loan.
- **Total Acc:** The total number of credit accounts of the borrower.
- **Total Payment:** The total amount paid by the borrower over the life of the loan.

### Project Workflow
**1. Data Collection:**
- **Steps:** Gather all relevant loan application data from the `financial_loan - original.csv`.Extract data and save it in a structured format for analysis.
- **Tools:** Microsoft Excel, MySQL.

**2. Data Preprocessing:**
- **Steps:**
  - **Data Cleaning:** Handle missing values, correct inconsistencies, and remove duplicates.
  - **Data Transformation:** Convert data types as necessary and create new features (e.g., month and year from dates).
  - **Normalisation:** Standardise numerical values to ensure consistency across the dataset.
- **Tools:** MySQL.

**3. Exploratory Data Analysis (EDA)**
- **Steps:**
  - **Summarise:** Gain initial insights and understand data distributions and relationships.
  - **Visualisation:** Visualise and explore data distributions and relationships.
- **Tools:** Microsoft Excel, MySQL.

**4. Data Analysis**
- **Steps:**
  - **KPI Calculation:** Compute Total Loan Applications, Total Funded Amount, Total Amount Received, Average Interest Rate, and Average Debt-to-Income Ratio (DTI).
  - **Good Loan vs. Bad Loan Analysis:** Differentiate between ‘Good Loans’ and ‘Bad Loans’ and analyse their respective metrics.
  - **Loan Status Grid View:** Create a grid view report categorized by ‘Loan Status’ to provide insights into metrics.
- **Tools:** MySQL.

**5. Data Visualisation**
- **Preview:** [Tableau Public](https://public.tableau.com/app/profile/jiahao.shao/viz/MarketingProject_17234127913230/ModellingAnalysis)
- **Steps:** Create interactive dashboards to visualise loan data and trends.
  - **Dashboards:**
    - *Summary Dashboard:* High-level overview of key metrics and loan statuses.
    - *Overview Dashboard:* Detailed visualisations of loan applications by month, state, purpose, term, employee length, and home ownership.
    - *Details Dashboard:* Comprehensive snapshot of individual loan details and metrics.
  - **Chart Types:**
    - *Line Chart:* Monthly trends by issue date.
    - *Filled Map:* Regional analysis by state.
    - *Donut Chart:* Loan term analysis.
    - *Bar Chart:* Employee length and loan purpose analysis.
    - *Tree Map:* Home ownership analysis.
- **Tools:** Tableau.

**6. Interpretation and Reporting**
- **Steps:**
  - **Insight Generation:** Interpret visualisations to identify trends and patterns.
  - **Report Creation:** Compile a report outlining key findings, insights, and recommendations.
- **Tools:** Microsoft Word, Microsoft PowerPoint.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) for details.

## Acknowledgements
This project is an adaptation of the concepts and methodologies taught by Data Tutorials on YouTube. Special thanks to Data Tutorials for their guidance and instructional videos.

### Original Tutorial
- <b>[Data Tutorials YouTube Channel](https://www.youtube.com/watch?v=7S5vkJVuaHc)</b>

### Disclaimer
Please note that this project is an adaptation of the concepts and methodologies taught by Data Tutorials. Any code, data, or content not directly from Data Tutorials is original work created for this project and is covered under the MIT License.

## Contact Me
For any questions or feedback regarding this project, feel free to reach out:
- Email: jiahao.shao30@gmail.com
- LinkedIn: <b>[Jiahao Shao](https://www.linkedin.com/in/shao-jiahao)</b>
