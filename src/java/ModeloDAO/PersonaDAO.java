
package ModeloDAO;

import Config.Conexion;
import Interfaz.Validar;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements Validar{
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();

    @Override
    public List listar() {
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select * from persona";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per = new Persona();
                per.setId(rs.getInt("id_persona"));
                per.setNom(rs.getString("nombre"));
                per.setApe(rs.getString("apellido"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql = "select * from persona where id_persona="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("id_persona"));
                p.setNom(rs.getString("nombre"));
                p.setApe(rs.getString("apellido"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean agregar(Persona per) {
        String sql = "insert into persona(nombre, apellido) values('"+per.getNom()+"','"+per.getApe()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editar(Persona per) {
        String sql = "update persona set nombre='"+per.getNom()+"', apellido='"+per.getApe()+"' where id_persona="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from persona where id_persona="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
