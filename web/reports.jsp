<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;800&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Nunito', sans-serif;
            background: linear-gradient(135deg, #FFE4E1, #E0FFFF, #F5FFFA);
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #ffffff;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar .logo {
            font-size: 1.8rem;
            font-weight: 800;
            color: #FFA07A;
            text-decoration: none;
        }

        .container {
            max-width: 700px;
            margin: 3rem auto;
            background-color: #ffffff;
            padding: 2.5rem;
            border-radius: 15px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 2rem;
            color: #444;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: #555;
        }

        select {
            padding: 0.7rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            font-size: 1rem;
            width: 100%;
        }

        button {
            background-color: #FFA07A;
            color: white;
            font-weight: bold;
            padding: 0.8rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #FF6347;
        }

        .back-link {
            display: inline-block;
            margin-top: 1.2rem;
            text-decoration: none;
            color: #FFA07A;
            font-weight: 600;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="a_dashboard.jsp" class="logo">Tiny Steps</a>
        <a href="index.html" style="text-decoration:none; font-weight:600; color:#FFA07A;">Logout</a>
    </div>

    <div class="container">
        <h2>Generate Reports</h2>

        <form action="GenerateReportServlet" method="post">
            <label for="reportType">Select Report Type</label>
            <select id="reportType" name="reportType" required>
                <option value="">-- Select Report --</option>
                <option value="student_list">Student List</option>
                <option value="teacher_assignments">Teacher Assignments</option>
                <option value="attendance_summary">Attendance Summary</option>
                <option value="parent_contacts">Parent Contact Info</option>
            </select>

            <button type="submit">Generate Report</button>
        </form>

        <a class="back-link" href="a_dashboard.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>
