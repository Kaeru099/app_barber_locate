<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/vendor/autoload.php';

$app = AppFactory::create();

function getDB(){
    $dbhost = "localhost";
    $dbname = "db_prueba";
    $dbuser = "root";
    $dbpass = "";
    $mysql_conn_string = "mysql:host=$dbhost;dbname=$dbname";
    $dbConnection = new PDO($mysql_conn_string, $dbuser, $dbpass);
    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $dbConnection;
}

$app->get('/', function (Request $request, Response $response, $args) {
    $response->getBody()->write("Hello world!");
    return $response;
});

$app->post('/restaurarContrasena', function ($request, $response, $args) {  //Defino los servicios  $app->post('/updateVeces', function ($request, $response)
	try{
		$json = $request->getBody();
		$data = json_decode($json, true);
		$db =  getDB(); //Carga los datos
		$sth = $db->prepare("UPDATE usuario
							 SET palabra_u = ?
							 WHERE pk_codigo = 1");//Insertamos información
        $sth->execute(array($data['palabra_u'])); //Sustituimos y ejecutamos la consulta
		$response->getBody()->write('{"error":"ok"}'); //Cuando la conexión halla terminado
		
	}catch(PDOException $e){
		
		$response->getBody()->write('{"error":{"texto":'.$e->getMessage().'}}'); //En caso que se halla generado algún error
	}
    return $response
    ->withHeader('Content-Type', 'application/json');
});

$app->run();