module PriceIndex

greet() = print("Hello World!")

function FixedLaspeyres(p,q)
N=size(p,1)
T=size(p,2)
Pl=zeros(N+1,T)
s=zeros(N,T)
   for t in 1:T
        for n in 2:N+1
        s[n-1,t] = (p[n-1,t]*q[n-1,t])/dot(p[:,t],q[:,t])
        Pl[n,t]=Pl[n-1,t]+p[n-1,t]/p[n-1,1]*s[n-1,1]
        end
    end
return Pl[N+1,:]
end

end # module
