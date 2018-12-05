
package sistema;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Sistema {
    
  private static Sistema instancia;  
  private List <Processo> listProcesso = new ArrayList ();  
  
  private Sistema() {
      
  }
  public void addProcesso (Processo p){
      this.listProcesso.add(p);
  }
  
  public static Sistema instancia() {
      
      if(instancia == null) {
          instancia = new Sistema();
      }
      return instancia;
  }
  
  public List <Processo> getListProcesso(){
      return this.listProcesso;
      
  }
}
