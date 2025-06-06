%%--------------------------------------------------------%%
%%                   TVP-VAR package                      %%
%%--------------------------------------------------------%%
%%              coded by Jouchi Nakajima                  %%
%%--------------------------------------------------------%%
%%               Last update: 2013/12/30                  %%
%%       http://sites.google.com/site/jnakajimaweb/       %%
%%--------------------------------------------------------%%
%%    You may use and modify this code at your own risk   %%
%%--------------------------------------------------------%%
											 
%%
%%  Function files for
%%  MCMC estimation of Time-Varying Parameter VAR model
%%  with stochastic volatility
%%

%%  
%%  setvar.m    sets variables or options
%%  mcmc.m      MCMC estimation for TVP-VAR model
%%
%%  ssmooth.m   implements simulation smoother
%%  svsamp.m    implements multi-move sampler for SV model
%%  impulse.m   computes time-varying impulse response
%%  drawimp.m   draw time-varying impulse response
%%  ftsvar.m    computes time-series variance  
%%  fGeweke.m   computes Geweke statistics for convergence
%%  fAt.m, fXt.m, fXh.m, finvm.m
%%              functions for some matrices 
%% 
%%  Note: this package requires statistics toolbox
%%

%%
%% [Illustrative examples]
%%
%%  tvpvar_ex*.m   illustrates MCMC estimation
%%                 (Data: tvpvar_ex.mat/.xls)
%%

%%--------------------------------------------------------%%