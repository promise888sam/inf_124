// JavaScript source code
function connectSQL(){
    const express = require('express');
    var mysql = require('mysql');
    var app = express();
    const bodyparser = require('body-parser');

    app.use(bodyparser.json());

    var connection = mysql.createConnection({
      host     : 'localhost',
      user     : 'root',
      password : '',
      database : 'gamedb'
    });

    connection.connect((err)=>{
        if(!err)
            console.log('Connected.');
        else
            console.log('failed.');
    });

    app.listen(3000, ()=>console.log('running at port: 3000.'));

    app.get('/gw/:name', (req, res)=>{
        connection.query('SELECT * FROM game WHERE name = ?', [req.params.name], (error, results, fields)=>{
            if (!error) 
                res.send(results);
            else
                console.log(error);
       })
    });

}

function loadGameInfo(){
    var table = document.getElementsByClassName("info");
}