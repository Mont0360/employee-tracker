const cTable = require('console.table');
const inquirer = require('inquirer');
const mysql = require('mysql')

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Van1gogh!",
    database: "employeeTracker_db"
});

connection.connect(function (err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }

    // console.log("Connected to db as id " + connection.threadId);
});

getJob();

function getJob() {
    inquirer
        .prompt(
            {
                name: 'job',
                type: 'list',
                message: 'Which would you like to do?',
                choices: ['add', 'view', 'update', 'exit'],
            }
        ).then(function ({ job }) {
            switch (job) {
                case 'add':
                    add();
                    break;
                case 'view':
                    view();
                    break;
                case 'update':
                    update();
                    break;
                case 'exit':
                    connection.end()
                    return;
            }

        })
}
