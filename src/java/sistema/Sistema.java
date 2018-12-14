package sistema;




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Sistema {
    
  private static Sistema instancia;      
  
  private Sistema() {
      
  }
  public List<PessoaFisica> getListPessoaFisica (){
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("Select * from public.pessoafisica");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      List<PessoaFisica> listPessoaFisica = new ArrayList<PessoaFisica>();
      ResultSet rs = null;
	try {
		rs = pstm.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      try {
		while(rs.next()) {
			  
			  PessoaFisica p = new PessoaFisica();
			  
			  p.setNome(rs.getString("nome"));
			  p.setRua(rs.getString("rua"));
                          p.setFuncao(rs.getString("funcao"));
                          p.setLogin(rs.getString("login"));
                          p.setSenha(rs.getString("senha"));
                          p.setId(rs.getInt("id"));
                        
			  listPessoaFisica.add(p);
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
      return listPessoaFisica;
  }
  
  public void insertPessoaFisica(PessoaFisica pessoaFisica) {
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {

		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("insert into public.pessoafisica (nome,rua,login,senha,funcao) values (?,?,?,?,?) ");
		
		pstm.setString(1, pessoaFisica.getNome());
		pstm.setString(2, pessoaFisica.getRua());
                pstm.setString(3, pessoaFisica.getLogin());
                pstm.setString(4, pessoaFisica.getSenha());
                pstm.setString(5, pessoaFisica.getFuncao());
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
  public static Sistema instancia() {
      
      if(instancia == null) {
          instancia = new Sistema();
      }
      return instancia;
  }
  
  
//  public static void main(String[] args) {
//	
//	  PessoaFisica pf = new PessoaFisica();
//	  pf.setNome("oliveira");
//	  pf.setRua("republica do peru");
//	  
//	  Sistema.instancia().insertPessoaFisica(pf);
//	  
//	  
//	  System.out.println(Sistema.instancia().getListPessoaFisica());
//  }
}
