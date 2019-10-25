xl=-2
xu=0
i=1
e(i)= 10

while(e(i)>0.01)
    
xr=(xl+xu)/2

g_xl = xl^4-1-(3*exp(xl));
g_xr = xr^4-1-(3*exp(xr));
g_xu = xu^4-1-(3*exp(xu));


if(g_xl*g_xr < 0 )
    xu = xr
    e(i+1) = abs(xr-xl);
end

if (g_xu*g_xr < 0 )
    xl = xr
    e(i+1) = abs(xu -xr);
end
i = i+1;
if (g_xu*g_xr ==0 )
    xr = xr;
end

end

fprintf('Profe le cambie los intervalos porque con los que daba el examen no se podia resolver y en los que puse si hay raiz\n');


tamanio = size (e)
ite = 1:1:tamanio (2);

figure ('DefaultAxesFontsize', 14)
set (gcf, 'color','white');
plot(ite,e,'color',[1 0 0],'LineWidth', 2);
grid on
xlabel('iterations')
ylabel('error')
legend('error')