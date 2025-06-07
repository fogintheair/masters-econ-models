library(quantmod)
library(rugarch)
library(rmgarch)
library(tseries)
library(zoo)
library(FinTS)
library(e1071)
library(xts)
library(mgarchBEKK)
library(MTS)
library(BEKKs)
library(ggplot2)

# 一、载入数据：手动，命名为during_covid_19

#二、 把数据变换为时间序列数据(只需要2-6列的数据)
during_ts <- ts(during_covid_19[,2:6]) # 没有用这个代码转换数据
# dccfit的说明文件，提到了xts格式
during_xts <- xts(during_covid_19[,2:6], order.by = during_covid_19$date)

# 不要时间列
# no_date <- all_4[,2:5]

# dcc-garch建模
uspec2_t <- ugarchspec(mean.model = list(armaOrder=c(0,0)),
                    variance.model = list(garchOrder=c(1,1), model='sGARCH'),   # sGARCH:standard GARCH
                    distribution.model = 'std')  # 这里可以设定模型的分布，norm为正态分布；std为学生t分布；ged为广义误差分布
spec2_t <- dccspec(uspec=multispec(replicate(5,uspec2_t)),
                 dccOrder = c(1,1),
                 distribution = 'mvt')   # 设定分布：mvnorm、mvt、mvlaplace


# 五变量dcc-garch，估计结果名为「dcc_during_t」
dcc_during_t <- dccfit(spec2_t, data=during_xts)
show(dcc_during_t) # 展示模型估计结果


# 画条件相关系数图
# （一）得到相关系数
# 「相关系数」
# 条件相关系数图及其统计分析
corall2_t <- rcor(dcc_during_t)
dim(corall2_t)   # 得到三个数字，最后一个为动态相关系数的个数
corall2_t[,,dim(corall2_t)[3]]

# save the specific 动态相关系数:第二行，第一列，sc的
cor_rb_rsc2_t <- corall2_t[2,1,]
cor_rb_rsc2_t <- as.numeric(cor_rb_rsc2_t)
date <- during_covid_19$date
cor_rb_rsc2_t <- data.frame(date, cor_rb_rsc2_t)

# （二）画图
# 画rb和rsc的相关图，plot.ts：画时间序列的时序图时用的，和plot（模型估计结果）4得到的图是一样的
# 国内外原油期货
# ylim=c(0.2050242,0.2050250) 能设置y轴刻度
plot(cor_rb_rsc2_t, type='l', ylab='', main="Conditional Correlation RB-RSC", xlab='')  # 参数main是设置图片标题用的
abline(h=0, col='red', lty=2)

# 使用ggplot函数画图：
ggplot(cor_rb_rsc2_t, aes(x=date, y=cor_rb_rsc2_t)) + 
  geom_line() + 
  theme_set(theme_bw()) + 
  labs(x=NULL, y='', title='Conditional Correlation RB-RSC') +
  theme(axis.text.x = element_text( size=15, color = 'black'),
        axis.text.y = element_text(size=15, color='black')) +
  theme(plot.title = element_text(hjust = 0.5, size=22))




# 得到动态条件相关系数的描述性统计
mystats(cor_rb_rsc2_t$cor_rb_rsc2_t)

# 可以画前两个变量间的动态相关系数图-4
plot(dcc_during_t)

# 做预测的代码
dccforecast(dcc_during, n.ahead = 5)

# 得到模型的「协方差」，抽取其中的sc部分，画图，这其实就是plot所得到的第二张图
covdcc <- rcov(dcc_during)
cov_sc <- covdcc[1,1,]
plot.ts(cov_sc, col="pink")
# 抽取其中的b部分
cov_b <- covdcc[2,2,]
plot.ts(cov_b, col="pink")













