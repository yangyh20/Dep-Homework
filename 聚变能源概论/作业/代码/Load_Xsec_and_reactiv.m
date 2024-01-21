% 获取常见反应的反应截面与反应率数据。
% 须与Xsec_and_reactiv_data.mat在同一目录。

[Xsec_fit,reactiv_fit,types]=get_fitfuns();

function [Xsec_fit,reactiv_fit,types]=get_fitfuns()
    load('Xsec_and_reactiv_data.mat')
    
    for type=types
	    Xsec_fitfun_lglg.(type)=fit(log10(E_data),log10(Xsec_data_saved.(type)),'cubicinterp');
	    Xsec_fit.(type)=@(E) 10.^feval(Xsec_fitfun_lglg.(type),log10(E));	
    
	    reactiv_fitfun_lglg.(type)=fit(log10(T_data),log10(reactiv_data_saved.(type)),'cubicinterp');
	    reactiv_fit.(type)=@(T) 10.^feval(reactiv_fitfun_lglg.(type),log10(T));	
    end
end