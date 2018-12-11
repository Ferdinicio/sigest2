package sistema;



public class Atendimento {

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
