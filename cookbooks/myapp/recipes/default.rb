directory 'C:\DevOpsApp' do
  action :create
end

file 'C:\DevOpsApp\index.html' do
  content <<~HTML
    <html>
    <head>
        <title>DevOps Lab</title>
    </head>
    <body>
        <h1>DevOps Lab Project</h1>
        <p>Application deployed using Chef.</p>
        <p>Jenkins + Chef Continuous Deployment</p>
    </body>
    </html>
  HTML
  action :create
end