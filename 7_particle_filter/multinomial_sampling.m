function samples = multinomial_sampling( w, N )
    samples = ones(N,1);
    for nn = 1 : 1 : N
        a = rand;
        s = w(1);
        while a > s
            samples(nn) = samples(nn) + 1;
            s = s + w(samples(nn));
        end
    end
end

