function [x, Z, genealogy, weights] = BootstrapPF(N, pyx_pdf, pxx_draw, px0_draw, y, func )
    
    if iscell(func)
        NF = length(func);
    else
        func = {func};
        NF = 1;
    end

    %Initialization
    T = length(y);
    
    weights = ones(N,1)/N;
    Z = -T*log(N);

    particles = nan(N,1);
    for ii = 1 : 1 : N
        particles(ii) = px0_draw();
    end

    genealogy = particles;
    
    x = cell(NF,1);
    for ff = 1 : 1 : NF
        x{ff} = zeros(T,1);
    end
    
    for tt = 1 : 1 : T
        % resampling
        ancestors = Multinomial_sampling( weights, N );

        % propagation
        new = nan(N,1);
        for ii = 1 : 1 : N
            new(ii) = pxx_draw(particles(ancestors(ii)));
        end
        particles = new;
                
        if nargout > 2
            gen = zeros(N,tt+1);
            for ii = 1 : 1 : N
                gen(ii,:) = [ genealogy(ancestors(ii),:)  particles(ii) ];
            end
            genealogy = gen;
        end

        % weights
        for ii = 1 : 1 : N
            weights(ii) = pyx_pdf(y(tt), particles(ii));
        end

        Z = Z + log(sum(weights));

        weights = weights/sum(weights);
        
        for ff = 1 : 1 : NF
            x{ff}(tt) = 0;
            for ii = 1 : 1 : N
                x{ff}(tt) = x{ff}(tt) + weights(ii) * func{ff}(particles(ii));
            end
        end

    end
    
    if NF == 1
        x = x{1};
    end
    
end