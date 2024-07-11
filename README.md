# Management System

Este é um sistema de gerenciamento de fornecedores desenvolvido em PHP. O sistema permite buscar, adicionar, editar e excluir fornecedores. Além disso, é possível associar produtos aos fornecedores e realizar a compra dos mesmos.

![Screenshot](/src/assets/images/login-page.png)

## Funcionalidades

- Listagem de fornecedores
- Busca de fornecedores por nome ou telefone
- Adição de novos fornecedores
- Edição de fornecedores existentes
- Exclusão de fornecedores
- Associação de produtos aos fornecedores
- Compra de produtos de fornecedores

## Tecnologias Utilizadas

- PHP
- MySQL
- HTML
- CSS
- JavaScript
- Bootstrap

## Instalação

1. Clone o repositório para o seu diretório local:

    ```sh
    git clone https://github.com/seu-usuario/management-system.git
    ```

2. Navegue até o diretório do projeto:

    ```sh
    cd management-system
    ```

3. Configure o banco de dados MySQL importando o arquivo `database.sql` localizado na pasta `sql`.

4. Edite o arquivo `connection.php` com as suas credenciais de acesso ao banco de dados:

    ```php
    <?php
    $con = new PDO("mysql:host=seu-host;dbname=seu-banco", "seu-usuario", "sua-senha");
    ?>
    ```

5. Inicie o servidor PHP:

    ```sh
    php -S localhost:8000
    ```

6. Acesse o sistema no seu navegador através do endereço:

    ```
    http://localhost:8000
    ```


## Demonstração

![Demo](/src/assets/images/demo.gif)

## Contribuição

Contribuições são bem-vindas! Se você encontrar algum problema ou tiver sugestões para melhorias, por favor, abra uma issue ou envie um pull request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

