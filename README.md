# BancoDeDadosProjetoCheck
Projeto de banco de dados sobre Constraints/Check, exercicios em aula


# 🗃️ Modelo Relacional no Oracle RDBMS  

Este projeto contém a implementação do modelo físico de banco de dados baseado no modelo relacional fornecido. O objetivo foi garantir a integridade referencial e aplicar restrições adequadas para validação dos dados.  

## 📌 Descrição  

A implementação inclui:  
- **Criação das tabelas `EMPLOYEES`, `DEPARTMENTS` e `JOBS`**  
- **Definição de chaves primárias e estrangeiras**  
- **Restrição `EMP_SALARY_MIN`**: Garante que os salários sejam positivos e diferentes de zero (`CHECK (salary > 0)`)  

## 📂 Estrutura do Banco de Dados  

### **Tabelas e Relacionamentos**  

- `EMPLOYEES`  
  - Contém os dados dos funcionários, incluindo nome, e-mail, cargo e salário.  
  - Relacionada com `DEPARTMENTS` via `departmentId`  
  - Relacionada com `JOBS` via `jobId`  

- `DEPARTMENTS`  
  - Contém os departamentos da empresa e seus respectivos gerentes (`managerId`).  
  - Relacionada com `EMPLOYEES` via `managerId`.  

- `JOBS`  
  - Contém os cargos disponíveis na empresa e a faixa salarial mínima e máxima.  
  - Relacionada com `EMPLOYEES` via `jobId`.  

## 🚀 Tecnologias Utilizadas  

- **Oracle RDBMS**  
- **SQL**  

## 📜 Código  

```sql
ALTER TABLE employees ADD CONSTRAINT empSalaryMin CHECK (salary > 0);
