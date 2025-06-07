%%--------------------------------------------------------%%
%%                     tvpvar_ex2.m                       %%
%%--------------------------------------------------------%%

%%
%%  MCMC estimation for Time-Varying Parameter VAR model
%%  with stochastic volatility
%%
%%  tvpvar_ex*.m illustrates MCMC estimation
%%  using TVP-VAR Package
%%  (Data: "tvpvar_ex.xls/.mat")
%%

clear all;
close all;

load tvpvar_ex;             % data (.mat)

asvar = {'p'; 'x'; 'i'};    % variable names
nlag = 1;                   % lags

setvar('data', my, asvar, nlag);  % set data

setvar('ranseed', 5);       % set ranseed
setvar('intercept', 1);     % set time-varying intercept
setvar('SigB', 1);          % set non-digaonal for Sig_beta
setvar('impulse', 12);      % set maximum length of impulse
                            % (smaller, calculation faster)

mcmc(10000);			    % MCMC

drawimp([1 6 12], 1);		% draw impulse reponse(1)
                            % : 1-,6-,12-period ahead
                            
drawimp([40 70 100], 0);	% draw impulse response(2)
                            % : response at t=40,70,100
