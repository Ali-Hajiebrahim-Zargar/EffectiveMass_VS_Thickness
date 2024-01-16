function [m_star_c,m_star_hh,m_star_lh,m_star_so,m_starrc,m_starrhh,m_starrlh,m_starrso,newx]= m_star(Y,Ec,Ehh,Elh,Eso,s)

datanum= size(Y,1);
newx= zeros(datanum-1,1);
h=1.05458e-34;

for i=2:datanum-1
newx(i,1)= ((Y(i,1)+Y(i+1,1))/2);
mmc(i,1)= ((Ec(i+1)-2*Ec(i)+Ec(i-1))/((Y(i)-Y(i-1))^2))*1.60218e-39;
m_starc(i,1)=(h^2)/mmc(i,1);
m_starrc(i,1)=m_starc(i,1)/0.91095e-30;
end

for i=2:datanum-1
newx(i,1)= ((Y(i,1)+Y(i+1,1))/2);
mmhh(i,1)= ((Ehh(i+1)-2*Ehh(i)+Ehh(i-1))/((Y(i)-Y(i-1))^2))*1.60218e-39;
m_starhh(i,1)=(h^2)/mmhh(i,1);
m_starrhh(i,1)=m_starhh(i,1)/0.91095e-30;
end

for i=2:datanum-1
newx(i,1)= ((Y(i,1)+Y(i+1,1))/2);
mmlh(i,1)= ((Elh(i+1)-2*Elh(i)+Elh(i-1))/((Y(i)-Y(i-1))^2))*1.60218e-39;
m_starlh(i,1)=(h^2)/mmlh(i,1);
m_starrlh(i,1)=m_starlh(i,1)/0.91095e-30;
end

for i=2:datanum-1
newx(i,1)= ((Y(i,1)+Y(i+1,1))/2);
mmso(i,1)= ((Eso(i+1)-2*Eso(i)+Eso(i-1))/((Y(i)-Y(i-1))^2))*1.60218e-39;
m_starso(i,1)=(h^2)/mmso(i,1);
m_starrso(i,1)=m_starso(i,1)/0.91095e-30;
end

m_star_c= m_starrc(s+1,1);
m_star_hh= m_starrhh(s+1,1);
m_star_lh= m_starrlh(s+1,1);
m_star_so= m_starrso(s+1,1);

end