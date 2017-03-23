



Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC_MFRC.Funktionsname = 'RMP_HN1RC_DiffKugel';
Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC_MFRC.inputs = {'R_ct','Tau_dl','Phi_HN','R_D','Tau_D','R_MP'};
Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC.Zfun = [ ...
    '(R_MP.*(Z_parallel((R_ct==0).*10^9+1./((Tau_dl./R_ct).*(1i.*w)), R_ct + ' ...
    '10* R_D .* tanh((1i.*w.*Tau_D*20).^0.5)./((1i.*w.*Tau_D*20).^0.5-tanh((1i.*w.*Tau_D*20).^0.5))' ...
    ')' ...
        '-R_ct./(1+1i.*w.*Tau_dl)' ...
        '+R_ct./(1+1i.*w.*Tau_dl).^Phi_HN' ...
    ')).^0.5.*coth((R_MP./(Z_parallel((R_ct==0).*10^9+1./((Tau_dl./R_ct).*(1i.*w)), R_ct + ' ...
    '10* R_D .* tanh((1i.*w.*Tau_D*20).^0.5)./((1i.*w.*Tau_D*20).^0.5-tanh((1i.*w.*Tau_D*20).^0.5))'  ...
    ')' ...
        '-R_ct./(1+1i.*w.*Tau_dl)' ...
        '+R_ct./(1+1i.*w.*Tau_dl).^Phi_HN'  ...
    ')).^0.5) '...
    ];
Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC.Zfun_HF = [...
    '(R_MP.*(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5'...
    '.*coth((R_MP./(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5)'...
    '-R_ct./(1+1i.*w.*Tau_dl).^Phi_HN'...
    ];
Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC.Zfun_MF = 'R_ct./(1+1i.*w.*Tau_dl).^Phi_HN';
Modellliste.Implementierung.RMP_HN1RC_DiffKugel_MFRC.Zfun_LF = ['(R_MP.*(Z_parallel((R_ct==0).*10^9+1./((Tau_dl./R_ct).*(1i.*w)), R_ct + ' ...
    '10* R_D .* tanh((1i.*w.*Tau_D*20).^0.5)./((1i.*w.*Tau_D*20).^0.5-tanh((1i.*w.*Tau_D*20).^0.5))' ...
    ')' ...
        '-R_ct./(1+1i.*w.*Tau_dl)' ...
        '+R_ct./(1+1i.*w.*Tau_dl).^Phi_HN' ...
    ')).^0.5.*coth((R_MP./(Z_parallel((R_ct==0).*10^9+1./((Tau_dl./R_ct).*(1i.*w)), R_ct + ' ...
    '10* R_D .* tanh((1i.*w.*Tau_D*20).^0.5)./((1i.*w.*Tau_D*20).^0.5-tanh((1i.*w.*Tau_D*20).^0.5))'  ...
    ')' ...
        '-R_ct./(1+1i.*w.*Tau_dl)' ...
        '+R_ct./(1+1i.*w.*Tau_dl).^Phi_HN'  ...
    ')).^0.5) '...
    '-(' ...
    'R_ct./(1+1i.*w.*Tau_dl).^Phi_HN' ...
    ')' '-(' ...
    '(R_MP.*(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5'...
    '.*coth((R_MP./(R_ct./(1+1i.*w.*Tau_dl).^Phi_HN)).^0.5)'...
    '-R_ct./(1+1i.*w.*Tau_dl).^Phi_HN'...
    ')'];
