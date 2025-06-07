%%--------------------------------------------------------%%
%%                     tvpvar_ex1.m                       %%
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

asvar = {'index'; 'v'; 'm0'; };    % variable names
nlag = 2;                   % lags

setvar('data', my, asvar, nlag); % set data

setvar('fastimp', 1);       % fast computing of response

mcmc(10000);                % MCMC

drawimp([0 1 2], 1);       % draw impulse reponse(1)
                            % : 4-,8-,12-period ahead
                            
drawimp([30 60 90], 0);		% draw impulse response(2)
                            % : response at t=30,60,90
