<?php

namespace App\Http\Controllers;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use App\Superheros;
use Illuminate\Http\Request;
use Exception;
use InvalidArgumentException;
class SuperherosController extends Controller
{ 


    public function findByPulisherAndRace(Request $request)
    {
        try {        
            $params = $request->request->all();
            $arrayParams = [];
            $code = 200;
            $error = false;
            if (count($params) < 3) {
                throw new InvalidArgumentException('Debe ingresar al menos 3 parametros de busqueda', 406);
            }
            foreach ($params as $param => $value) {
                if ($param != 'page') {
                    $arrayResponse = [
                        'query' => $param,
                        'value' => $value
                    ];
                    array_push($arrayParams, $arrayResponse);
                }
            }
            $superheros = Superheros::orderBy('name');
            foreach ($arrayParams as $param) {
                $superheros = $superheros->where($param["query"], 'LIKE', '%' . $param["value"] . '%');
            }
        } catch (Exception $ex) {
            $code = Response::HTTP_INTERNAL_SERVER_ERROR;
            $error = true;
            $mensaje = "Ocurrio un error - Error: {$ex->getMessage()}";
        }
        $response = [
            'code' => $code,
            'error' => $error,
            'data' => $code == 200 ? $superheros->get() : $mensaje,
        ];
        return new JsonResponse(
            $response
        );
    }
}
