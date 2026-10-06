# 🎮 Console SF3500

Procedimento para preparação do cartão SD e atualização da lista de jogos do **Console SF3500**.

## 📌 Preparação do cartão SD

Para preparar o cartão SD para utilização no SF3500:

### 1. Formatar o cartão

Utilizar o programa **fat32format** para realizar a formatação.

Na configuração do programa, utilizar:

* **File System:** FAT32
* **Allocation Unit Size:** `32768` bytes (32 KB)

> ⚠️ A configuração do **Allocation Unit Size = 32768** é importante para o funcionamento correto do cartão no SF3500.

---

## 💾 2. Copiar a imagem do sistema

Após formatar o cartão, copiar para ele o conteúdo da imagem:

```text
SF3500_sdcard_v1.1_b
```

Essa é a versão mais nova testada e que **funcionou corretamente no console**.

### Estrutura

A imagem deve ser utilizada como base do cartão, mantendo os arquivos e diretórios necessários para o funcionamento do SF3500.

---

## 🎮 3. Adicionar novos jogos

Para adicionar novos jogos, copie os arquivos dos jogos para o **diretório correspondente aos jogos** no cartão SD.

Depois de adicionar novos jogos, é necessário atualizar a lista de arquivos para que eles apareçam no menu do console.

### Gerar o `filelist.csv`

Dentro do diretório dos jogos existe o arquivo:

```text
make-filelist.bat
```

Execute esse arquivo `.bat`.

Ele irá gerar/atualizar:

```text
filelist.csv
```

O arquivo `filelist.csv` é utilizado pelo SF3500 para identificar os jogos disponíveis.

### ⚠️ Importante

Sempre que novos jogos forem adicionados, execute novamente:

```text
make-filelist.bat
```

Caso contrário, os novos jogos podem estar fisicamente no cartão, mas **não aparecer no menu do console**.

---

## 🔄 Fluxo recomendado

```text
Cartão SD
   │
   ├── 1. Formatar com fat32format
   │       └── Allocation Unit Size = 32768
   │
   ├── 2. Copiar a base
   │       └── SF3500_sdcard_v1.1_b
   │
   ├── 3. Adicionar jogos
   │
   └── 4. Executar
           └── make-filelist.bat
                   │
                   └── filelist.csv
```

## 🛠️ Ferramentas utilizadas

* **fat32format** — formatação do cartão em FAT32
* **Win32DiskImager** — criação/gravação de imagens do cartão SD
* **make-filelist.bat** — geração da lista de jogos
* **SF3500_sdcard_v1.1_b** — imagem/base utilizada nos testes

## ✅ Versão testada

A versão utilizada nos testes foi:

```text
SF3500_sdcard_v1.1_b
```

**Resultado:** funcionamento confirmado no Console SF3500.

---

## 📝 Observações

Este README documenta um procedimento baseado em testes realizados com o Console SF3500.

Antes de modificar o cartão original, recomenda-se manter uma **cópia de segurança da imagem do cartão SD**.

---

### 📁 Estrutura básica

Exemplo simplificado:

```text
SDCARD/
├── arquivos do sistema
├── diretórios do console
├── diretório dos jogos/
│   ├── jogo_01
│   ├── jogo_02
│   ├── ...
│   ├── make-filelist.bat
│   └── filelist.csv
└── outros arquivos necessários
```

> **Dica:** depois de adicionar ou remover jogos, execute novamente o `make-filelist.bat` antes de colocar o cartão no console.
