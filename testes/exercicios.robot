***Settings***
#Dentro do documento teremos informações a respeito do arquivo
Documentation   Nesse arquivo incluimos todos os exercícios do Prime Experts
...             Focado em Imersão com RobotFramework. 
...             Professor Helder    Data Inicio: 14/06/2021

***Variables***
#Minha primeira variável simples
${NOME}     Ana Carolina

#Minha primeira variável tipo dicionário
&{PESSOA}   
...     nome=Ana    
...     sobrenome=Ribeiro   
...     idade=35 
...     cidade=Brasilia
...     estado=DF
...     profissao=QA


#Minha primeira variável tipo lista
@{FRUTAS}   
...     Melancia    
...     Laranja  
...     Abacaxi 
...     Melão 
...     Morango    

***Test Cases***
Cenario: Imprimir Dicionário
    Log To Console  ${PESSOA.nome}
    Log To Console  ${PESSOA.sobrenome}
    Log To Console  ${PESSOA.idade}
    Log To Console  ${FRUTAS}
    
Cenario: Imprimir Pessoa
    [Tags]          TESTE
    Log To Console    \n
    Log To Console  ***PESSOA***
    Log To Console  O nome é:${PESSOA.nome}
    Log To Console  O sobrenome é:${PESSOA.sobrenome}
    Log To Console  A idade é:${PESSOA.idade}
    Log To Console  A cidade é:${PESSOA.cidade}
    Log To Console  O estado é:${PESSOA.estado}
    Log To Console  A profissão é:${PESSOA.profissao}
   
Cenario: Imprimir Frutas
    Log To Console    \n
    Log To Console  ***FRUTAS***
    Log To Console  \n ${FRUTAS[0]}
    Log To Console  \n ${FRUTAS[1]}
    Log To Console  \n ${FRUTAS[2]}
    Log To Console  \n ${FRUTAS[3]}
    Log To Console  \n ${FRUTAS[4]}

Cenario: Realizar Soma
    [Tags]  SOMA
    ${RESULTADO}    Somar dois numeros  5  10
    Log To Console  ${RESULTADO}

Cenario: Meu teste soma
    [Tags]  SOMA_2
        ${RESULTADO}    Somar dois numeros "55" e "44"
    Log To Console  ${RESULTADO} 
    
    
***Keywords***
Somar dois numeros
    [Arguments]     ${NUM_A}        ${NUM_B}
    ${SOMA}         Evaluate        ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}
    
Somar dois numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}         Evaluate      ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}
    

    