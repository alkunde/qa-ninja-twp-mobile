***Settings***
Library     hello.py
Documentation   IF / ELSE IF / ELSE example using Robot Framework 3 and 4.
...             Generate a random number.
...             Do if-else logic based on the generated number.
...             Stop (pass) when the condition is met.

***Variables***
${nome}     André
${nome2}    André
${MAX_TRIES}=           ${50}
${NUMBER_TO_PASS_ON}=   61

***Keywords***
Robot Framework 4: IF, ELSE IF, ELSE condition
    Log To Console  Teste
    FOR     ${i}    IN RANGE    ${MAX_TRIES}
        ${random}=      Evaluate    random.randint(0, 50)
        IF      ${nome} == ${nome2}
        Pass Execution      "${random} == ${NUMBER_TO_PASS_ON}"
        ELSE IF     ${random} > ${NUMBER_TO_PASS_ON}
        Log To Console      Too high ${random} - try ${i}.
        ELSE
        Log To Console      Too low ${random} - try ${i}.
        END
    END

# ***Test Cases***
# Deve retornar mensagem de boas vindas
    # ${resultado}=   Hello Robot     ${nome}
    # Should Be Equal  ${resultado}   Olá, ${nome}.

***Tasks***
Use if - else if - else conditions in Robot Framework
    Robot Framework 4: IF, ELSE IF, ELSE condition