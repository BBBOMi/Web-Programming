package lecture02;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by bomi on 2019-04-03.
 */
public class DB {
    static DataSource dataSource = null;

    public static Connection getConnection(String databaseName) throws SQLException, NamingException {
        if(dataSource == null) {
            InitialContext context = new InitialContext();
            dataSource = (DataSource)context.lookup("java:comp/env/jdbc/" + databaseName);
        }
        return dataSource.getConnection();
    }
}
