%% Wczytanie danych

[filename, pathname] = uigetfile({'*.dat'},'File Selector');
fullpathname = strcat(pathname, filename);
data = load(fullpathname);

[filename2, pathname2] = uigetfile({'*.dat'},'File Selector');
fullpathname2 = strcat(pathname2, filename2);
data2 = load(fullpathname2);
%% Szacowanie energii prążka (estymatorem nieobciążonym)

E_i = data(:,1);
N_i = data(:,2);
E_i2 = data2(:,1);
N_i2 = data2(:,2);
N = sum(N_i);
E_szac = 1/N*sum(E_i.*N_i);
plot(E_i, N_i, '.', E_i2, N_i2, '.', 'MarkerSize', 25)
title("Widma A i B: liczba zliczeń dla poszczególnych energii")
xlabel("E[keV]")
ylabel("Liczba zliczeń w kanale")
legend({'widmo A','widmo B'},'Location','northeast')
%% Szacowanie odchylenia standardowego

s = sqrt(1/(N-1)*sum(N_i.*(E_i-E_szac).^2));
s_E = s/sqrt(N);
s_s = s/sqrt(2*(N-1));

%% Ostateczne obliczenia

FWHM = 2.35*s;
s_sFWHM = 2.35*s_s;

% E ostateczne = E_szac +- s_E
% FWHM ostateczne = FWHM +-s_sFWHM
% nie wiem czemu 2,35 - to wg prezentacji