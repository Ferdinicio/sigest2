package sistema;



public class PessoaFisica {
	
	private String nome;
	private String rua;
        private String login;
	private String senha;
        private String funcao;
        private int id;

        public void setId (int id) {
                this.id = id; 
        }
        public int getId (){
                return id; 
        }

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}
        
        public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
        
        public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
        
        public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "{"+this.nome+"," +this.rua+"}";
	}

}
