import DataBase.MockDB;
import freemarker.template.Configuration;
import modelo.Estudiante;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

/**
 * Created by mc on 5/30/2017.
 */
public class Main {

    public static void main(String[] args) {
        staticFileLocation("Templates");
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_23);
        cfg.setClassForTemplateLoading(Main.class,"/Templates/");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(cfg);

        get("/", (request, response) -> {
            response.redirect("/Home");
            return null;
        });

        get("/Home", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("Estudiantes", MockDB.getInstance().getEstudiantes().values());
            return new ModelAndView(attributes, "Home.ftl");
        }, freeMarkerEngine);

        get("/Visualizar", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("Estudiante", MockDB.getInstance().getEstudiantes().get(Integer.parseInt(request.queryParams("Mat").replace(",",""))));
            return new ModelAndView(attributes, "Visualizar.ftl");
        }, freeMarkerEngine);

        get("/Registro", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            return new ModelAndView(attributes, "Registro.ftl");
        }, freeMarkerEngine);

        get("/Modificar", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            System.out.println(Integer.parseInt(request.queryParams("Mat").replace(",","")));
            attributes.put("Estudiante", MockDB.getInstance().getEstudiantes().get(Integer.parseInt(request.queryParams("Mat").replace(",",""))));
            return new ModelAndView(attributes, "Modificar.ftl");
        }, freeMarkerEngine);

        post("/Registro", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            Estudiante est = new Estudiante(Integer.parseInt(request.queryParams("Mat")),request.queryParams("Nom"),
                    request.queryParams("Ape"), request.queryParams("Tel"));

            if(!MockDB.getInstance().getEstudiantes().containsKey(est.getMatricula())) {
                System.out.println("insert");
                MockDB.getInstance().getEstudiantes().put(est.getMatricula(), est);
            }

            System.out.println(MockDB.getInstance().getEstudiantes().size());

            response.redirect("/Home");
            return new ModelAndView(attributes, "Registro.ftl");
        }, freeMarkerEngine);

        post("/Borrar", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            int mat = Integer.parseInt(request.queryParams("Matricula").replace(",",""));
            System.out.println(mat);
            if(MockDB.getInstance().getEstudiantes().containsKey(mat)) {
                System.out.println("delete");
                MockDB.getInstance().getEstudiantes().remove(mat);
            }

            System.out.println(MockDB.getInstance().getEstudiantes().size());

            return "ok";
        });


        post("/Modificar", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            int mat0 = Integer.parseInt(request.queryParams("Mat0").replace(",",""));
            int mat = Integer.parseInt(request.queryParams("Mat").replace(",",""));

            if(mat0 == mat && MockDB.getInstance().getEstudiantes().containsKey(mat0)){
                Estudiante est = new Estudiante(mat,request.queryParams("Nom"),request.queryParams("Ape"),request.queryParams("Tel"));
                MockDB.getInstance().getEstudiantes().put(est.getMatricula(),est);
            }else if(MockDB.getInstance().getEstudiantes().containsKey(mat0) && !MockDB.getInstance().getEstudiantes().containsKey(mat)) {
                System.out.println("delete in modify");
                MockDB.getInstance().getEstudiantes().remove(mat0);
                Estudiante est = new Estudiante(mat,request.queryParams("Nom"),request.queryParams("Ape"),request.queryParams("Tel"));
                MockDB.getInstance().getEstudiantes().put(est.getMatricula(),est);
            }

//            int mat0 = Integer.parseInt(request.queryParams("Mat0").replace(",",""));
//            if(MockDB.getInstance().getEstudiantes().containsKey(mat0)) {
//                Estudiante est = MockDB.getInstance().getEstudiantes().get(mat0);
//                est.setMatricula(mat);
//                est.setNombre(request.queryParams("Nom"));
//                est.setApellido(request.queryParams("Ape"));
//                est.setTelefono(request.queryParams("Tel"));
//            }

            System.out.println("modificar"+MockDB.getInstance().getEstudiantes().size());

            response.redirect("/Home");
            return new ModelAndView(attributes, "Registro.ftl");
        }, freeMarkerEngine);

    }
}
