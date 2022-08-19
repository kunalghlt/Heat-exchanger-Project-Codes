D=.0253;
D_f=0.041;
L=28;
mf=0.5;
cf=4195;
rho=1000/1.027;
n=365e-06;
s=0.002;
k_f=0.668;
Pr=23;
del=0.001;
del_t=0.002;
T_if=35;
T_o=300;
S_min=pi*D^2/4;
v_max=mf/(S_min*rho);
Re=rho*v_max*D/n;
A_T=pi*D*s;
A=(0.5*pi*(D_f^2-D^2))+pi*D_f*del+pi*D*s;
Nu_bar=0.3*(Re^0.625)*((A/A_T)^-0.375)*(Pr^0.333);
h_bar=Nu_bar*k_f/D;
A_t=pi*D*s;
A_f=(0.5*pi*(D_f*D_f-D*D))+pi*D_f*del;
psi=D/2*((D_f/D)-1)*(1+0.35*log(D_f/D));
nf= (tanh(sqrt(2*h_bar/(del*k_f))*psi))/(sqrt(2*h_bar/(del*k_f))*psi);
H=h_bar*(nf*A_f+A_t)/(mf*cf);  
N=5000;
for i=1:N
delta_T_fluid= (T_if-T_o)*(1-exp(-H));
T_of=T_if+abs(delta_T_fluid);
T_if=T_of;
end
T_of;
TTD=(T_o-T_of)

