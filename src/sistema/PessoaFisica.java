package sistema;

public class PessoaFisica {
	
	private String nome;
	private String rua;

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

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "{"+this.nome+"," +this.rua+"}";
	}

}
