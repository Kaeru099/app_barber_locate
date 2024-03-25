<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/vendor/autoload.php';

$app = AppFactory::create();

function getDB(){
    $dbhost = "localhost";
    $dbname = "barberia1";
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

        $sqlUsuario = "SELECT *
                       FROM usuario
                       WHERE fk_cedulaU = ? AND f_nacimiento = ?";

		$sth = $db->prepare($sqlUsuario);//Insertamos información
        $sth->execute(array($data['fk_cedulaU'], $data['f_nacimiento'])); //Sustituimos y ejecutamos la consulta
        $usuario = $sth->fetch();

        if ($usuario) {
            $sth = $db->prepare("UPDATE usuario
                                SET contrasena = ?
                                WHERE fk_cedulaU = ?");
            $sth->execute(array($data['contrasena'], $data['fk_cedulaU']));
            $response->getBody()->write('{"msgU":"ok"}'); //Cuando la conexión halla terminado
        } else {
            $response->getBody()->write('{"msgU":"El número de documento y la fecha de nacimiento no coinciden"}');
        };

        $sqlBarbero = "SELECT *
                       FROM barberos
                       WHERE fk_cedulaB = ? AND bf_nacimiento = ?";

		$sth = $db->prepare($sqlBarbero);//Insertamos información
        $sth->execute(array($data['fk_cedulaB'], $data['bf_nacimiento'])); //Sustituimos y ejecutamos la consulta
        $barbero = $sth->fetch();

        if ($barbero) {
            $sth = $db->prepare("UPDATE barberos
                                SET bcontrasena = ?
                                WHERE fk_cedulaB = ?");
            $sth->execute(array($data['bcontrasena'], $data['fk_cedulaB']));
            $response->getBody()->write('{"msgB":"ok"}'); //Cuando la conexión halla terminado
        } else {
            $response->getBody()->write('{"msgB":"El número de documento y la fecha de nacimiento no coinciden"}');
        };

        $sqlPropietario = "SELECT *
                           FROM propietario
                           WHERE pk_cedulaP = ? AND Pf_nacimiento = ?";

		$sth = $db->prepare($sqlPropietario);//Insertamos información
        $sth->execute(array($data['pk_cedulaP'], $data['Pf_nacimiento'])); //Sustituimos y ejecutamos la consulta
        $propietario = $sth->fetch();

        if ($propietario) {
            $sth = $db->prepare("UPDATE propietario
                                SET contrasena_P = ?
                                WHERE pk_cedulaP = ?");
            $sth->execute(array($data['contrasena_P'], $data['pk_cedulaP']));
            $response->getBody()->write('{"msgP":"ok"}'); //Cuando la conexión halla terminado
        } else {
            $response->getBody()->write('{"msgP":"El número de documento y la fecha de nacimiento no coinciden"}');
        };

		
	}catch(PDOException $e){
		
		$response->getBody()->write('{"error":{"texto":"'.$e->getMessage().'"}}'); //En caso que se halla generado algún error
	}
    return $response
    ->withHeader('Content-Type', 'application/json');
});

$app->run();