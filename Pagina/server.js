const express = require('express');
const { Pool } = require('pg');
const app = express();
const port = 3000;
const cors = require('cors');



// Configurar o Pool do PostgreSQL
const pool = new Pool({
  user: 'postgres',           // Seu usuário PostgreSQL
  host: 'localhost',              // Seu host, geralmente localhost
  database: 'climatechange',          // Nome do seu banco de dados
  password: 'admin',          // Sua senha do PostgreSQL
  port: 5433,                     // Porta padrão do PostgreSQL
});

// Middleware para interpretar JSON
app.use(express.json());
app.use(cors());

// Rota para buscar internações por mês e ano
app.get('/dadosClimaticos', async (req, res) => {
    const ano = req.query.ano;
  
    // Verifica se o ano é válido
    if (!ano || ano < 2000 || ano > 2020) {
      return res.status(400).send("Ano inválido. O ano deve estar entre 2000 e 2020.");
    }
  
    try {
      // Consulta SQL para buscar as temperaturas médias, mínimas e máximas para cada mês
      const result = await pool.query(`
        SELECT 
          mes, 
          AVG(temp_min) AS temp_min,
          AVG(temp_med) AS temp_med,
          AVG(temp_max) AS temp_max
        FROM 
          inmet
        WHERE 
          ano = $1
        GROUP BY 
          mes
        ORDER BY 
          mes;
      `, [ano]);
  
      // Se não houver dados para o ano, retorna um erro
      if (result.rows.length === 0) {
        return res.status(404).send("Nenhum dado encontrado para o ano " + ano);
      }
  
      res.json(result.rows);
    } catch (err) {
      console.error(err);
      res.status(500).send("Erro ao buscar dados climáticos");
    }
  });
  
  app.listen(port, () => {
    console.log(`Servidor rodando em http://localhost:${port}`);
  });