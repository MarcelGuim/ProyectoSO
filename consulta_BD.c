//programa en C para consultar los datos de la base de datos
//#include <my_global.h>
#include <mysql.h>
#include <string.h>

int main(int argc, char **argv)
{
	MYSQL *conn;
	int err;
	MYSQL_RES *resultado;
	MYSQL_ROW row;
	conn = mysql_init(NULL);
	if (conn==NULL)
	{
		printf ("Error al crear la conexi￳n: %u %s\n",mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	conn = mysql_real_connect (conn, "localhost","root", "mysql", "monopoly",0, NULL, 0);
	if (conn==NULL)
	{
		printf ("Error al inicializar la conexi￳n: %u %s\n",
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	char consulta [500];
	strcpy (consulta,"SELECT dades_personals.nombre from dades_personals, jugadores WHERE jugadores.puntuacion_maxima=(select max(puntuacion_maxima) from jugadores) AND dades_personals.ID_P = jugadores.ID_J");
	err = mysql_query (conn, consulta);
	if (err!=0) {
		printf ("Error al consultar datos de la base %u %s\n",mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	resultado = mysql_store_result (conn);
	row = mysql_fetch_row (resultado);
	printf("%s",row[0]);
	
	
}
