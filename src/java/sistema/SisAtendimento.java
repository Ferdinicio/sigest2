package sistema;




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class SisAtendimento {
    
    
      private static SisAtendimento instancia;      
  
  private SisAtendimento() {
      
  }
  
   public List<Atendimento> getListAtendimento(){
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("select * from public.atendimento");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      List<Atendimento> listAtendimento = new ArrayList<Atendimento>();
      ResultSet rs = null;
	try {
		rs = pstm.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      try {
		while(rs.next()) {
			  
			  Atendimento a = new Atendimento();
			  
			  a.setCliente(rs.getString("cliente"));
			  a.setDescricao(rs.getString("descricao"));
                          a.setEquipamento(rs.getString("equipamento"));
                          a.setObservacao(rs.getString("observacao"));
                          a.setOs(rs.getInt("os"));
                          a.setStatus(rs.getString("status"));
                 
                         
			  
			  listAtendimento.add(a);
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      try {
		conn.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
      return listAtendimento;
  }

    public void insertAtendimento(Atendimento atendimento) {
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {

		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("insert into public.atendimento (cliente,descricao,equipamento,observacao,status,data) values (?,?,?,?,?,?) ");
		
		pstm.setString(1, atendimento.getCliente());
		pstm.setString(2, atendimento.getDescricao());
                pstm.setString(3, atendimento.getEquipamento());
                pstm.setString(4, atendimento.getObservacao());
                pstm.setString(5, atendimento.getStatus());
                pstm.setString(6, atendimento.getTempoInicio());
               
                
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	try {
		pstm.execute();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
  }
    
    public void updateAtendimento(Atendimento atendimento) {
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {

		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("update public.atendimento set observacao=?, status=?, data=? where os=?");
		
		pstm.setString(1, atendimento.getObservacao());
		pstm.setString(2, atendimento.getStatus());
                pstm.setString(3, atendimento.getTempoInicio());
                pstm.setInt(4, atendimento.getOs());
               
                
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	try {
		pstm.execute();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
  }
  public static SisAtendimento instancia() {
      
      if(instancia == null) {
          instancia = new SisAtendimento();
      }
      return instancia;
  }
    
}