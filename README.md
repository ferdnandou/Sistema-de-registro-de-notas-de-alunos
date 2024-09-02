# Desafio Técnico: Sistema de Registro de Alunos e Notas

## Descrição
Você foi contratado por uma instituição de ensino para desenvolver um sistema de registro de alunos e suas notas em diversos cursos. O objetivo é criar um banco de dados relacional utilizando SQL para gerenciar as informações de alunos, cursos e notas. Seu sistema deve permitir operações básicas de inserção, consulta, atualização e exclusão de dados.

## Tarefas

### Criação do Banco de Dados
1. Crie um banco de dados chamado `Escola`.

### Criação das Tabelas
1. **Tabela Alunos**: Deve conter os seguintes campos:
   - `id_aluno` (Identificador do aluno, chave primária, auto incremento)
   - `nome` (Nome do aluno)
   - `data_nascimento` (Data de nascimento do aluno)
   - `endereço` (Endereço do aluno)
   
2. **Tabela Cursos**: Deve conter os seguintes campos:
   - `id_curso` (Identificador do curso, chave primária, auto incremento)
   - `nome_curso` (Nome do curso)
   - `descricao` (Descrição do curso)
   
3. **Tabela Notas**: Deve conter os seguintes campos:
   - `id_nota` (Identificador da nota, chave primária, auto incremento)
   - `id_aluno` (Identificador do aluno, chave estrangeira referenciando Alunos)
   - `id_curso` (Identificador do curso, chave estrangeira referenciando Cursos)
   - `nota` (Nota atribuída ao aluno no curso)

### Inserção de Dados
1. Insira ao menos 3 alunos na tabela Alunos.
2. Insira ao menos 3 cursos na tabela Cursos.
3. Insira ao menos 5 registros de notas na tabela Notas, associando alunos aos cursos com notas variadas.

### Consultas
1. Liste todos os alunos juntamente com as notas que eles obtiveram em cada curso.
2. Calcule a média das notas para cada curso.
3. Encontre o aluno com a maior nota em cada curso.

### Atualização de Dados
1. Atualize a nota de um aluno em um curso específico.
2. Modifique o endereço de um aluno para um novo endereço.

### Exclusão de Dados
1. Exclua um aluno e todas as suas notas associadas.
2. Remova um curso e todas as notas associadas a esse curso.

## Requisitos
- Utilize comandos SQL como `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `SELECT`, `UPDATE`, `DELETE` e `JOIN`.
- As tabelas devem estar corretamente normalizadas.
- As operações devem ser executadas em um ambiente SQL relacional de sua escolha.

## Explicações Adicionais
- **Criação do Banco de Dados**: O comando `CREATE DATABASE` cria um novo banco de dados onde as tabelas e dados serão armazenados. O comando `USE` seleciona esse banco de dados para que todas as operações subsequentes ocorram dentro dele.
  
- **Criação das Tabelas**:
  - **Tabela Alunos**: Armazena detalhes sobre os alunos, com um identificador único (`id_aluno`) que é gerado automaticamente. Outros campos incluem nome, data de nascimento e endereço.
  - **Tabela Cursos**: Armazena informações sobre os cursos, com um identificador único (`id_curso`) e campos para o nome e descrição do curso.
  - **Tabela Notas**: Registra as notas dos alunos em cursos específicos. Inclui identificadores (`id_aluno` e `id_curso`) que referenciam as tabelas Alunos e Cursos, e o campo de nota. As chaves estrangeiras asseguram que apenas valores válidos sejam inseridos.
  
- **Inserção de Dados**: 
  - `INSERT INTO` adiciona registros às tabelas. Para Alunos e Cursos, adicionamos dados iniciais de alunos e cursos, e para Notas, associamos notas específicas a alunos e cursos.

- **Consultas**: 
  - `SELECT` com `JOIN` combina informações de várias tabelas. Mostramos o nome do aluno, o curso e a nota usando `JOIN` para combinar as tabelas Notas, Alunos, e Cursos.

- **Atualização de Dados**: 
  - `UPDATE` modifica dados existentes. Atualizamos a nota de um aluno específico em um curso.

- **Exclusão de Dados**: 
  - `DELETE` remove registros das tabelas. Mostramos como excluir notas de um aluno, o próprio aluno e cursos.

Boa sorte e capriche na implementação!
