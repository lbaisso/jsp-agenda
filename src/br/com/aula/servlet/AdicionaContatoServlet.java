package br.com.aula.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.aula.dao.ContatoDao;
import br.com.aula.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*
	 * O m�todo service aceita todos os m�todos HTTP. Para dar tratamento espec�fico
	 * usa-se os m�todos doGet e doPost Al�m do GET e do POST, o protocolo HTTP
	 * possui ainda mais 7 m�todos: PUT, DELETE, HEAD, TRACE, CONNECT, OPTIONS e
	 * PATCH.
	 */
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response)
					throws IOException, ServletException {
		
		// busca o writer
		PrintWriter out = response.getWriter();
		
		// buscando os par�metros no request
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String email = request.getParameter("email");
		String dataEmTexto = request.getParameter("dataNascimento");
		Calendar dataNascimento = null;

		// fazendo a convers�o da data	
		Date date;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(dataEmTexto);
		} catch (Exception e) {
			try {
				date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			} catch (Exception exp) {
				out.println("Erro na convers�o de data");
				return; //para a execu��o do m�todo
			}
		}
		dataNascimento = Calendar.getInstance();
		dataNascimento.setTime(date);
		
		// monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);
		
		// imprime o nome do contato que foi adicionado
//				out.println("<html>");
//				out.println("<body>");
//				out.println("Contato " + contato.getNome() +
//						" capturado com sucesso!!!");
//				out.println("</body>");
//				out.println("</html>");
		
		// // salva o contato
		try {
			ContatoDao dao = new ContatoDao();
			dao.adiciona(contato);
			RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
			rd.forward(request,response);
		}catch (Exception e) {
		 	throw new ServletException(e);
		}
		
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}