pais(canada).
pais(italia).
pais(estados_unidos).

estado(columbia_britanica). %canada
estado(ontario).            %canada
estado(quebec).             %canada
estado(veneza).             %italia
estado(trento).             %italia
estado(roma).               %italia
estado(california).         %estados unidos
estado(texas).              %estados unidos
estado(florida).            %estados unidos

cidade(ottawa).      %canada
cidade(victoria).    %canada
cidade(toronto).     %canada
cidade(quebec).      %canada
cidade(roma).        %italia
cidade(veneza).      %italia
cidade(trento).      %italia
%cidade(roma).       %italia
cidade(washington).  %estados unidos
cidade(sacramento).  %estados unidos
cidade(austin).      %estados unidos
cidade(tallahassee). %estados unidos

capital(ottawa, canada).               %canada
capital(victoria, columbia_britanica). %canada
capital(toronto, ontario).             %canada
capital(quebec, quebec).               %canada
capital(roma, italia).                 %italia
capital(veneza, veneza).               %italia
capital(trento, trento).               %italia
capital(roma, roma).                   %italia
capital(washington, estados_unidos).   %estados unidos
capital(sacramento, california).       %estados unidos
capital(austin, texas).                %estados unidos
capital(tallahassee, florida).         %estados unidos

estado_em(columbia_britanica, canada). %canada
estado_em(ontario, canada).            %canada
estado_em(quebec, canada).             %canada
estado_em(veneza, italia).             %italia
estado_em(trento, italia).             %italia
estado_em(roma, italia).               %italia
estado_em(california, estados_unidos). %estados unidos
estado_em(texas, estados_unidos).      %estados unidos
estado_em(florida, estados_unidos).    %estados unidos

cidade_em(X, Z) :- capital(X, Y), estado_em(Y, Z), pais(Z).

cidade_mesmo_pais(X, Y) :- cidade_em(X, Z), cidade_em(Y, Z), pais(Z).

estado_mesmo_pais([], _).
estado_mesmo_pais([H|T], P) :- estado_em(H, P), pais(P),
                               estado_mesmo_pais(T, P).


