<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SkillsVisualization.aspx.cs" Inherits="Dylans_FYP.SkillsVisualization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <div id="chart_div"></div>    

        <script>
            
            google.charts.load('current', {packages: ['corechart', 'bar']});
            google.charts.setOnLoadCallback(drawBasic);

            function drawBasic() {
                var data = google.visualization.arrayToDataTable([
                    ['Skill', 'Level Of Expertise', { role: 'style' }],
                    ['Java', 3, 'color: green'],
                    ['C#', 5, 'color: green'],
                    ['Management', 2, 'color: green'],
                    ['VB.NET', 2, 'color: green'],
                    ['SQL', 4, 'color: green']
                ]);
                    

                var options = {
                    title: 'Employee Competency Grid',
                    chartArea: {width: '50%'},
                    hAxis: {
                        title: 'Level of Expertise',
                        minValue: 0
                    },
                    legend: { position: 'none' },
                    vAxis: {
                        title: 'Skill'
                    }
                };

                var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

                chart.draw(data, options);
            }
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        </div>
        

    </form>
</body>
</html>
