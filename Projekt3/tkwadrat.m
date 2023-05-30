function tkwadrat = tkwadrat(badana, kontrolna)
Nbadana = size(badana,2);
Nkontrolna = size(kontrolna,2);
ilosccech = size(badana,1);

sredniaBadana = 1/Nbadana*sum(badana,2);
sredniaKontrolna = 1/Nkontrolna*sum(kontrolna,2);
sredniaOgolnaProby = 1/(Nbadana+Nkontrolna)*((Nbadana*sredniaBadana)+(Nkontrolna*sredniaKontrolna));
estymataBadana = zeros(ilosccech, ilosccech);
estymataKontrolna = zeros(ilosccech, ilosccech);

for i = 1:Nbadana
    estymataBadana = estymataBadana + ((badana(:,i)-sredniaBadana)*(badana(:,i)-sredniaBadana).');
end
estymataBadana = 1/(Nbadana-1)*estymataBadana;

for i = 1:Nkontrolna
    estymataKontrolna = estymataKontrolna + ((kontrolna(:,i)-sredniaKontrolna)*(kontrolna(:,i)-sredniaKontrolna).');
end
estymataKontrolna = 1/(Nkontrolna-1)*estymataKontrolna;
estymatorUsrednionejMacierzyWariancji = 1/(Nbadana+Nkontrolna-2)*((Nbadana-1)*estymataBadana+(Nkontrolna-1)*estymataKontrolna);
tkwadrat = 1/(Nbadana + Nkontrolna - 2)*(Nbadana*Nkontrolna/(Nbadana+Nkontrolna)*(sredniaBadana-sredniaKontrolna).'*inv(estymatorUsrednionejMacierzyWariancji)*(sredniaBadana-sredniaKontrolna));
end