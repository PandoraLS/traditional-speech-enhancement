# traditional-speech-enhancement-algorithms

传统语音增强算法，该部分代码配套书籍为《语音增强-理论与实践》，包含经典的语音增强算法和语音质量客观评估标准

《语音增强-理论与实践》2012**中文版**电子书可从[百度网盘](https://pan.baidu.com/s/1E5Mi3POcXHg5WabvGfCl4w)获取，提取码为`med8`

《语音增强-理论与实践 第2版》2013**英文版**电子书可从[百度网盘](https://pan.baidu.com/s/1gTRIt3doc7DgiA4-Zb6ZwQ)获取，提取码`45xv`

这里仅包含`matlab`代码和样例音频(*.wav)，对应书籍配套光盘中的`MATLAB code`部分

该部分代码发布较早，如果在最新的`matlab`上运行，可能需要做**适当修改**，比如在`statistical_based/wiener_as.m`中
```
wavwrite( enhanced_speech, fs, nbits, outfile);
```
需要修改为以下写法之后即可在`matlab2016`中运行
```
audiowrite(outfile,enhanced_speech,fs);
```

总文件夹结构如下
```
+---spectral_subtractive                    # 谱减法
+---statistical_based                       # 基于统计的方法
+---subspace                                # 子空间法
+---noise_estimation                        # 噪声估计算法
\---objective_measures                      # 客观评估准则
|   +---intelligibility                     # 语音可懂度
|   \---quality                             # 语音质量(清晰度)
+---ideal_channel_selection                 # 理想通道选择
```

每个子文件夹中包含`readme.txt`和`readme.pdf`，提供各算法的**使用样例**和对应的**参考文献**

各文件夹中包含的算法如下
```
├─spectral_subtractive                      # 谱减法 
│      specsub.m                            # 基本谱减算法
│      mband.m                              # 多带谱减算法
│      ss_rdc.m                             # 采用自适应增益平均和低延时卷积的谱减算法
│
├─statistical_based                         # 基于统计的方法
│      wiener_iter.m                        # 基于全极点语音产生模型的迭代维纳滤波算法
│      wiener_as.m                          # 基于先验信噪比估计的维纳滤波算法
│      wiener_wt.m                          # 基于小波阈值多窗谱的维纳滤波算法
│      mt_mask.m                            # 基于心理声学的算法
│      audnoise.m                           # 可听(Audible)噪声抑制算法
│      mmse.m                               # 采用或未采用语音存在不确定度的MMSE算法
│      logmmse.m                            # 对数MMSE算法
│      logmmse_SPU.m                        # 结合语音存在不确定度的对数MMSE算法
│      stsa_weuclid.m                       # 基于加权欧式失真测度的贝叶斯估计器
│      stsa_wcosh.m                         # 基于加权Cosh失真测度的贝叶斯估计器
│      stsa_wlr.m                           # 基于加权似然比失真测度的贝叶斯估计器
│      stsa_mis.m                           # 基于修正Itakura-Saito失真测度的贝叶斯估计器
│
├─subspace                                  # 子空间法
│      klt.m                                # 采用内嵌预白化的子空间法
│      pklt.m                               # 基于感知的子空间法
│
├─noise_estimation                          # 噪声估计
│      specsub_ns.m                         # 不同噪声估计算法汇总
│      martin_estimation.m                  # Martin最小值跟踪算法
│      mcra_estimation.m                    # MCRA算法
│      mcra2_estimation.m                   # MCRA2算法
│      imcra_estimation.m                   # 改进的MCRA算法
│      doblinger_estimation.m               # 连续最小值跟踪算法
│      hirsch_estimation.m                  # 加权谱平均
│      connfreq_estimation.m                # 联合时频区域
│
├─objective_measures                        # 客观评估准则
│  ├─intelligibility                        # 语音可懂度
│  │      CSII.m                            # 计算CSII测度
│  │      NCM.m                             # 计算NCM测度
│  │      SII.m                             # 计算SII测度
│  │
│  └─quality                                # 语音质量(清晰度)
│          comp_snr.m                       # 计算分段信噪比及总和
│          comp_wss.m                       # 计算加权谱斜率测度
│          comp_llr.m                       # 计算似然比
│          comp_is.m                        # 计算Itakura-Saito测度
│          comp_cep.m                       # 计算倒谱距离
│          comp_fwseg.m                     # 计算频率加权分度信噪比(fwSNRseg)
│          comp_fwseg_variant.m             # 计算频率变化的fwSNRseg
│          comp_fwseg_mars.m                # 基于MARS分析计算频率变化的fwSNRseg
│          pesq.m                           # 计算PESQ(语音感知质量)
│          composite.m                      # 计算综合测度
│          addnoise_asl.m                   # 基于活动语音强度按指定信噪比向干净语音中加入噪声
│
└─ideal_channel_selection                   # 理想通道选择
        ics.m                               # 基于信噪比的通道选择(理想二值掩蔽)
        ics_constr_rule.m                   # 基于SNR_ESI规则的通道选择
        ics_masker_rule.m                   # 基于掩码约束的通道选择
        ics_reverb.m                        # 基于SRR规则的通道选择
```
