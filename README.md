<p align="center">
  <img src="https://r2.fivemanage.com/XkoKpmjadN1IkipymzzJO/capa.jpg" alt="Banner Curso FiveM do Ponei" style="max-width: 100%;" />
</p>

# 🚀 Base Hensa - Curso do Ponei

Bem-vindo à **Base Hensa**!  
Este repositório faz parte do material do **Curso do Ponei**, e aqui você encontrará todos os arquivos necessários para rodar sua própria base do FiveM.

---

## 📂 Estrutura do Repositório

- `resources/` → Pasta com os recursos (scripts) do servidor.  
- `artifacts/` → Pasta reservada para os **artifacts do FiveM** (⚠️ os arquivos não estão no repositório, você deve baixá-los do site oficial).  
- `.gitignore` → Arquivos ignorados pelo Git.  
- `database.sql` → Estrutura inicial do banco de dados.  
- `env.example.cfg` → Arquivo de exemplo para configuração de variáveis do servidor.  
- `server.cfg` → Arquivo de configuração principal do servidor.  
- `server.png` → Logo do servidor (aparece na lista do FiveM).  

---

## ⚙️ Passo a Passo para Iniciar a Base

### 1️⃣ Configuração do Banco de Dados
1. Abra o **HeidiSQL** (ou outro gerenciador de banco de dados MySQL/MariaDB).  
2. Conecte-se ao seu servidor de banco de dados.  
3. Crie um novo **database** (exemplo: `hensa`).  
4. Importe o arquivo `database.sql` para popular as tabelas iniciais.  

---

### 2️⃣ Baixando os Artifacts do FiveM
1. Vá até o site oficial do FiveM:  
   👉 [https://runtime.fivem.net/artifacts/fivem/](https://runtime.fivem.net/artifacts/fivem/)  
2. Baixe a versão **mais recente** do servidor para o seu sistema operacional (Windows ou Linux).  
3. Extraia o conteúdo dentro da pasta `artifacts/` (já existente neste repositório).  
4. O repositório mantém apenas a **pasta `artifacts/` vazia**, para indicar onde os arquivos devem ser colocados.  

---

### 3️⃣ Configuração do Arquivo `.env`
1. Localize o arquivo `env.example.cfg` na raiz do projeto.  
2. Renomeie ele para **`env.cfg`**.  
3. Abra o arquivo e configure as credenciais:  

```cfg

# Configurações do MySQL
set mysql_connection_string "server=127.0.0.1;uid=root;password=;database=hensa;port=3307;charset=utf8mb4"

# 🔑 API Steam (obtenha em: https://steamcommunity.com/dev/apikey)
set steam_webApiKey "SUA_API_KEY_AQUI"

# 🎫 Licença FiveM (obtenha em: https://keymaster.fivem.net)
sv_licenseKey "SUA_LICENCA_AQUI"

# Permissões e Identificação
add_ace group.admin command allow
add_ace group.admin command.quit deny
