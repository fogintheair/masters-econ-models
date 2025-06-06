clear all;
close all;

gb = xlsread('gb_uncertainty.xlsx');             % load data 

asvar = {'RGB'; 'ROVX'; 'RGRP'};    % variable names
nlag = 1;                   % lags

setvar('data', gb, asvar, nlag); % set data

setvar('ranseed', 1);   
setvar('fastimp', 1);       % fast computing of response

mcmc(10000);                % MCMC

drawimp([1 2 4], 1);       % draw impulse reponse(1)
                            % : 1-,2-,4-period ahead
                            
drawimp([123 135 146], 0);		% draw impulse response(2)
                            % : response at t=123,135,146
