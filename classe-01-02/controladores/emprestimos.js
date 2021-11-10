const conexao = require('../conexao');

const cadastrarEmprestimo = async (req, res) => {
    const { usuario_id, livro_id, status } = req.body;

    if (!nome) {
        return res.status(400).json("O campo nome é obrigatório.");
    }

    try {
        const query = 'insert into autores (nome, idade) values ($1, $2)';
        const autor = await conexao.query(query, [nome, idade]);

        if (autor.rowCount === 0) {
            return res.status(400).json('Não foi possivel cadastrar o autor');
        }

        return res.status(200).json('Autor cadastrado com sucesso.')
    } catch (error) {
        return res.status(400).json(error.message);
    }
}



module.exports = {
    listarEmprestimos,
    obterEmprestimo,
    cadastrarEmprestimo,
    atualizarEmprestimo,
    excluirEmprestimo
}


