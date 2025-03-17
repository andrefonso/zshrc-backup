# zshrc-backup

Este repositório contém um script para realizar backups diários do arquivo `.zshrc` no Debian/Linux.

## Como funciona
O script copia o arquivo `.zshrc` da pasta home do usuário para a pasta `mybkp`, adicionando a data do backup ao nome do arquivo.

## Instalação e uso
1. Clone este repositório:
   ```sh
   git clone https://github.com/andrefonso/zshrc-backup.git
2. Acesse a pasta do repositório:
   ```sh
   cd zshrc-backup
3. Torne o script executável:
   ```sh
   chmod +x zshbkp.sh
4. Para testar o script manualmente, execute:
   ```sh
   ./zshbkp.sh
- Isso criará um arquivo de backup na pasta `mybkp`.
  
5. Configure a execução automática adicionando a seguinte linha ao crontab:
   ```sh
   crontab -e
- E insira a linha abaixo para executar o script diariamente às 9h:
  ```sh
  0 9 * * * /home/andre/zshbkp.sh

- Salve e feche o arquivo do crontab
  
6. Para verificar se o crontab está ativo e rodando execute o comando:
   ```sh
   sudo service cron status
   ou
   sudo /etc/init.d/cron status
- Se não estiver em ativo execute o seguinte comando:
  ```sh
  sudo service cron start

7. Para verificar quais os jobs estão programados no crontab execute o seguinte comando:
   ```sh
   crontab -l
8. Para remover todos os jobs do crontab execute o seguinte comando:
   ```sh
   crontab -r



