package sistema;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Processo {
    
    
   public List<Processo> getListProcesso (){
	  
      Connection conn = null;
	try {
		conn = Connect.getConexao();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      PreparedStatement pstm = null;
	try {
		pstm = conn.prepareStatement("Select * from chamado");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      List<Processo> listProcesso = new ArrayList<Processo>();
      ResultSet rs = null;
	try {
		rs = pstm.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      try {
		while(rs.next()) {
			  
			  Processo p = new Processo();
			  
			  p.setCliente(rs.getString("cliente.nome"));
			  p.setDescricao(rs.getString("descricao"));
                          p.setEquipamento(rs.getString("equipmento"));
			  p.setObservacao(rs.getString("observacao"));
                          
			  
			  listProcesso.add(p);
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
    private String descricao;
    private String cliente;
    private String equipamento;
    private String observacao;
    
    private long tempoInicio;
    private long tempoFim;
    
    public void setDescricao (String descricao) {
    this.descricao = descricao; 
}
    public String getDescricao (){
        return descricao; 
    }
        public void setCliente (String cliente) {
    this.cliente = cliente; 
}
    public String getCliente (){
        return cliente; 
    }
        public void setEquipamento (String equipamento) {
    this.equipamento = equipamento; 
}
    public String getEquipamento (){
        return equipamento; 
    }
         public void setObservacao (String observacao) {
    this.observacao = observacao; 
}
    public String getObservacao (){
        return observacao; 
    }
    
    public void setTempoInicio (long tempoInicio){
        this.tempoInicio = tempoInicio;
    }
    public long getTempoInicio (){
            return tempoInicio; 
        }   
    public void setTempoFim (long tempoFim){
        this.tempoFim = tempoFim;
    }
    public long getTempoFim (){
        return tempoFim;
    }
}
