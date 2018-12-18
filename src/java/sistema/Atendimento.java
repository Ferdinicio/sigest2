package sistema;





public class Atendimento {

    private String descricao;
    private String cliente;
    private String equipamento;
    private String observacao;
     private String status;
    private int os;
    
    private String tempoInicio;
    private String tempoFim;
    
    public void setDescricao (String descricao) {
    this.descricao = descricao; 
}
    public String getDescricao (){
        return descricao; 
    }
    public void setStatus (String status) {
    this.status = status; 
}
    public String getStatus (){
        return status; 
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
        public void setOs (int os) {
    this.os = os; 
}
    public int getOs (){
        return os; 
    }
    
    public void setTempoInicio (String tempoInicio){
        this.tempoInicio = tempoInicio;
    }
    public String getTempoInicio (){
            return tempoInicio; 
        }   
    public void setTempoFim (String tempoFim){
        this.tempoFim = tempoFim;
    }
    public String getTempoFim (){
        return tempoFim;
    }
}
