// JavaScript source code

function loadInfo(){
    function parseURL(param){
        var url = new URL(window.location.href);
        var name = url.searchParams.get(param);
        return name;
    }
    var game = parseURL('name');
    document.getElementById('name').innerHTML = game;
    switch(game){
        case 'God of War':
            document.getElementById('image').src = 'https://www.virginmegastore.ae//medias/sys_master/root/h99/h8c/9159138934814/God-of-War-378794-Thumbnail.jpg';
            document.getElementById('platform').innerHTML = 'PlayStation 4';
            document.getElementById('realeaseDate').innerHTML = 'April 20, 2018';
            document.getElementById('publisher').innerHTML = 'Sony Interactive Entertainment';
            document.getElementById('price').innerHTML = '$49.99';
            break;
        case 'Fortnite':
            document.getElementById('image').src = 'image/fortnite.jpg';
            document.getElementById('platform').innerHTML = 'PS4, PC';
            document.getElementById('realeaseDate').innerHTML = 'July 25, 2017';
            document.getElementById('publisher').innerHTML = 'Epic Games';
            document.getElementById('price').innerHTML = '$29.99';
            break;
        case 'ARK':
            document.getElementById('image').src = 'image/ark.jpg';
            document.getElementById('platform').innerHTML = 'PS4, PC';
            document.getElementById('realeaseDate').innerHTML = 'August 29, 2017';
            document.getElementById('publisher').innerHTML = 'Studio Wildcard';
            document.getElementById('price').innerHTML = '$44.99';
            break;
        case 'Borderlands 3':
            document.getElementById('image').src = 'image/bl3.jpg';
            document.getElementById('platform').innerHTML = 'PlayStation 4';
            document.getElementById('realeaseDate').innerHTML = 'October 14, 2014';
            document.getElementById('publisher').innerHTML = '2K Games, Aspyr';
            document.getElementById('price').innerHTML = '$39.99';
            break;
        case 'Marvel\'s Spider-man':
            document.getElementById('image').src = 'image/msm.jpg';
            document.getElementById('platform').innerHTML = 'PlayStation 4';
            document.getElementById('realeaseDate').innerHTML = 'September 7, 2018';
            document.getElementById('publisher').innerHTML = 'Sony Interactive Entertainment';
            document.getElementById('price').innerHTML = '$34.99';
            break;
        case 'Red Dead Redemption II':
            document.getElementById('image').src = 'image/rdr2.jpg';
            document.getElementById('platform').innerHTML = 'PlayStation 4';
            document.getElementById('realeaseDate').innerHTML = 'October 26, 2018';
            document.getElementById('publisher').innerHTML = 'Rockstar Games';
            document.getElementById('price').innerHTML = '$37.99';
            break;
        case 'League of Legends':
            document.getElementById('image').src = 'image/league.jpg';
            document.getElementById('platform').innerHTML = 'PC';
            document.getElementById('realeaseDate').innerHTML = 'October 27, 2009';
            document.getElementById('publisher').innerHTML = 'Riot Games';
            document.getElementById('price').innerHTML = '$9.99';
            break;
        case 'Overwatch':
            document.getElementById('image').src = 'image/ow.jpg';
            document.getElementById('platform').innerHTML = 'PC, PS4, X-box';
            document.getElementById('realeaseDate').innerHTML = 'May 24, 2016';
            document.getElementById('publisher').innerHTML = 'Blizzard Entertainment';
            document.getElementById('price').innerHTML = '$24.99';
            break;
        case 'Don\'t Starve Together':
            document.getElementById('image').src = 'image/Don\'t Starve Together.jpg';
            document.getElementById('platform').innerHTML = 'PC';
            document.getElementById('realeaseDate').innerHTML = 'April 21, 2016';
            document.getElementById('publisher').innerHTML = 'Klei Entertainment';
            document.getElementById('price').innerHTML = '$19.99';
            break;
        case 'Call of Duty: Black Ops 4':
            document.getElementById('image').src = 'https://s3.gaming-cdn.com/images/products/2468/271x377/call-of-duty-black-ops-4-cover.jpg';
            document.getElementById('platform').innerHTML = 'PC, PS4';
            document.getElementById('realeaseDate').innerHTML = 'October 12, 2018';
            document.getElementById('publisher').innerHTML = 'Activision';
            document.getElementById('price').innerHTML = '$54.99';
            break;
        /*case '':
            document.getElementById('image').src = '';
            document.getElementById('platform').innerHTML = '';
            document.getElementById('realeaseDate').innerHTML = '';
            document.getElementById('publisher').innerHTML = '';
            document.getElementById('price').innerHTML = '';
            break;*/
    }
}



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
            if (!error){
                alert(results);
                res.send(results);
                document.getElementById('name').innerHTML = results;
            }
            else
                console.log(error);
       })
    });

}
