Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/09/2024
Var
// Se��o de Declara��es das vari�veis 
nomes: vetor[1..9] de caractere
emails: vetor[1..9] de caractere
telefones: vetor[1..9] de caractere
quantidade_clientes: inteiro
indice: inteiro
opcao: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
procedimento AdicionarCliente()
    se quantidade_clientes < 9 entao
        escreva("Digite o nome do cliente: ")
        leia(nomes[quantidade_clientes + 1])
        escreva("Digite o email do cliente: ")
        leia(emails[quantidade_clientes + 1])
        escreva("Digite o telefone do cliente: ")
        leia(telefones[quantidade_clientes + 1])

        quantidade_clientes := quantidade_clientes + 1
    senao
        escreval("Limite de clientes atingido.")
    fimse
procedimento ListarClientes()
    se quantidade_clientes = 0 entao
        escreval("Nenhum cliente cadastrado.")
    senao
        para i de 1 ate quantidade_clientes faca
            escreval("Cliente ", i, ": ", nomes[i], " | Email: ", emails[i], " | Telefone: ", telefones[i])
        fimpara
    fimse
procedimento EditarCliente()
    escreva("Digite o n�mero do cliente que deseja editar (1 a ", quantidade_clientes, "): ")
    leia(indice)

    se indice >= 1 e indice <= quantidade_clientes entao
        escreva("Digite o novo nome do cliente: ")
        leia(nomes[indice])
        escreva("Digite o novo email do cliente: ")
        leia(emails[indice])
        escreva("Digite o novo telefone do cliente: ")
        leia(telefones[indice])
    senao
        escreval("Cliente inv�lido.")
    fimse
procedimento RemoverCliente()
    escreva("Digite o n�mero do cliente que deseja remover (1 a ", quantidade_clientes, "): ")
    leia(indice)

    se indice >= 1 e indice <= quantidade_clientes entao
        para i de indice ate quantidade_clientes - 1 faca
            nomes[i] := nomes[i + 1]
            emails[i] := emails[i + 1]
            telefones[i] := telefones[i + 1]
        fimpara

        quantidade_clientes := quantidade_clientes - 1
        escreval("Cliente removido com sucesso.")
    senao
        escreval("Cliente inv�lido.")
    fimse
    quantidade_clientes := 0
    repita
        escreval("1 - Adicionar Cliente")
        escreval("2 - Listar Clientes")
        escreval("3 - Editar Cliente")
        escreval("4 - Remover Cliente")
        escreval("5 - Sair")
        escreva("Escolha uma op��o: ")
        leia(opcao)
.
        escolha opcao
        caso 1
            AdicionarCliente()
        caso 2
            ListarClientes()
        caso 3
            EditarCliente()
        caso 4
            RemoverCliente()
        caso 5
            escreval("Saindo...")
        outrocaso
            escreval("Op��o inv�lida.")
        fimescolha
    ate opcao = 5


Fimalgoritmo