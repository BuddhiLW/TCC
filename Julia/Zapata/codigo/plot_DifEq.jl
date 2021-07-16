using DifferentialEquations, Plots

function rumor(du, u, p, t)
  du[1] = -p[3]*p[1]*u[2]*u[1]
  du[2] = p[3]*p[1]*u[1]u[2] + (-1)*p[2]*p[1]*u[2]*(u[2]+u[3])
  du[3] = p[2]*p[1]*u[2]*(u[2]+u[3])
end


alpha = collect(0:0.1:1)
beta = collect(1:-0.1:0)
k = [1,1,1,1,1,1,1,1,1,1,1]
p = [k alpha beta]
p[1,:]
Tuple(Float64(x) for x in p[1,:])

#I = collect(0:0.1:1)
#Sp = collect(1:-0.1:0)
#St =[0,0,0,0,0,0,0,0,0,0]
u0=[0.9,0.1,0]
tspan=(0.,10.)

for i in 1:11
  prob = ODEProblem(rumor, u0, tspan, Tuple(Float64(x) for x in p[i,:]))
  sol = solve(prob)
  plot(sol, plotdensity=10000,lw=1.5, label=["Ignorants" "Spreaders" "Stiflers"], title = string("Alpha=",repr("$(p[i,2])"),"  Beta=",repr("$(p[i,3])")))
  png("fig9$(i)")
end

for i in 1:11
  prob = ODEProblem(rumor, u0, tspan, Tuple(Float64(x) for x in p[i,:]))
  sol = solve(prob)
  plot(sol, plotdensity=10000,lw=1.5, label=["Ignorants" "Spreaders" "Stiflers"], title = string("Alpha=",repr("$(p[i,2])"),"  Beta=",repr("$(p[i,3])")))
  png("fig0$(i)")
end
