



Modellliste.Implementierung.RMP_HN1RC.Funktionsname = 'RMP_HN1RC';
Modellliste.Implementierung.RMP_HN1RC.inputs = {'R_ct','Tau_dl','Phi_HN','R_MP'};
Modellliste.Implementierung.RMP_HN1RC.Zfun = [ ...
    '(R_MP.*(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5'...
    '.*coth((R_MP./(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5)'...
    ];
Modellliste.Implementierung.RMP_HN1RC.Zfun_HF = ['0'];
Modellliste.Implementierung.RMP_HN1RC.Zfun_MF = [...
    '(R_MP.*(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5'...
    '.*coth((R_MP./(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5)'];
Modellliste.Implementierung.RMP_HN1RC.Zfun_LF = ['0'];
