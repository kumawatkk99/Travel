import com.ewheelz.ConnectionPool;
import java.io.PrintStream;

public class TestRun
{

    public TestRun()
    {
    }

    public static void main(String args[])
        throws Exception
    {
        java.sql.Connection connection = ConnectionPool.getConnection();
        System.out.println("Connection Object:" + connection);
    }
}