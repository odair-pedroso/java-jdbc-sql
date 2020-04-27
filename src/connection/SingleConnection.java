package connection;

import java.sql.Connection;
import java.sql.DriverManager;



// Respons�vel por fazer a conex�o com banco de dados

public class SingleConnection {
	
	private static String banco = "jdbc:postgresql://localhost:5432/curso-jsp?autoReconnect=true";
	private static String password = "admin";
	private static String user = "postgres";
	private static Connection connection = null; /* instanciar o objeto do banco sql*/
	
	
	static {
		
		conectar(); //a partir do momento que a classe for invocada (SingleConnection), ele ir� conectar
	}
	
	
	public SingleConnection() { /* construtor da classe */
		
		conectar();
		
	}
	
	
	private static void conectar() {
		
		try {
			
			if (connection == null) {
				
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(banco, password, user);
				connection.setAutoCommit(false); /* as opera��es de banco n�o ser�o salvas automaticamente, insert, delete, update */
				
				System.out.println("Conectou com sucesso");
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Erro ao conectar com banco de dados");
		}		
		
		
		
	}

	public static Connection getConnection() {
		
		return connection;
	}
	
	

}
