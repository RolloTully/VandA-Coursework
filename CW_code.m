youngs_modulus =200e9;
shear_modulus =75e9;
density = 7850;
m_a = (0.640*0.06376*0.00673) 
m_b = (0.400*0.06369*0.00649)
Ia = (0.06376*0.00673^3)/12
Ib = (0.06369*0.00649^3)/12
m1 = m_a*(5/18);
m2 = m_a*(4.5/18);
m3 = m_a*(4/18);
m4 = m_a*(2.5/18) + m_b/2;
m5 = m_b/4;
m6 = m_b/4;
u = 0.640/18;
a11 = ((5*u)^3)/(3*youngs_modulus*Ia)
a12 = 
a22 = ((10*u)^3)/(3*youngs_modulus*Ia)
a33 = ((14*u)^3)/(3*youngs_modulus*Ia)
a41 = ((3*18*u-5*u)*(5*u)^2)/(6*youngs_modulus*Ia)
a42 = ((3*18*u-10*u)*(10*u)^2)/(6*youngs_modulus*Ia)
a43 = ((3*18*u-14*u)*(14*u)^2)/(6*youngs_modulus*Ia)
a44 = ((3*18*u-18*u)*(18*u)^2)/(3*youngs_modulus*Ia)

a61 = a41  
a62 = a42  
a63 = a43  
a64 = a44  
a65 = a44 + 
a66 = a44 +
a25 =
a26 =
mass_matrix = [ m1  0  0  0  0  0;
                 0 m2  0  0  0  0;
                 0  0 m3  0  0  0;
                 0  0  0 m4  0  0;
                 0  0  0  0 m5  0;
                 0  0  0  0  0 m6]
flexibility_matrix = [a11 a12 a13 a14 a15 a16 a55 a56;%
                      a21 a22 a23 a24 a25 a26 a65 a66;%Sahil
                      a31 a32 a33 a34 a35 a36 a55 a56;%Sam
                      a41 a42 a43 a44 a45 a46 a65 a66;%Josh
                      a51 a52 a53 a54 a55 a56 a15 a16;%Yugui
                      a61 a62 a63 a64 a65 a66 a25 a26 %Rollo
                      ];
%dynamical_matrix = flexibility_matrix*mass_matrix;
%[R,L] = eig(dynamical_matrix);
%[Ls,n] = sort(diag(L));
%R = R(:,n);
%omega = sqrt(1./Ls);
%nat_freq = omega/(2*pi);