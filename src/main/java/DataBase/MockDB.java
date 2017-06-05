package DataBase;

import modelo.Estudiante;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by mc on 5/30/2017.
 */
public class MockDB {
    private static HashMap<Integer,Estudiante> estudiantes;
    private static MockDB ourInstance = new MockDB();

    public static MockDB getInstance() {
        return ourInstance;
    }

    private MockDB() {
        estudiantes = new  HashMap<Integer,Estudiante>();
    }

    public static HashMap<Integer,Estudiante> getEstudiantes() {
        return estudiantes;
    }

    public static void setEstudiantes( HashMap<Integer,Estudiante> estudiantes) {
        MockDB.estudiantes = estudiantes;
    }
}
