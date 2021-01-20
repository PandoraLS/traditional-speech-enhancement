# traditional-speech-enhancement-algorithms

传统语音增强算法
语音增强算法的下载为[K14513_CD_Files.zip](https://www.crcpress.com/downloads/K14513/K14513_CD_Files.zip)

压缩包中由于包含一些数据集，所以比较大；
这里仅仅上传代码部分（matlab），代码年代比较久，但是**仅需稍加修改就可以在`matlab2016`及以上版本上运行**。

该部分代码包括一些经典的语音增强算法、数据处理方法和评测准则，在每部分子文件夹下都有`readme.txt`对各算法的介绍。

- 谱减法
    * specsub
    * mband
    * ss_rdc
- 基于统计的方法
    * wiener_iter
    * wiener_as
    * wiener_wt
    * mt_mask
    * audnoise
    * mmse
    * logmmse
    * logmmse_SPU
    * stsa_weuclid
    * stsa_wcosh
    * stsa_wlr
    * stsa_mis
- 噪声估计方法
    * specsub_ns
    * martin_estimation
    * mcra_estimation
    * mcra2_estimation
    * imcra_estimation
    * doblinger_estimation
    * hirsch_estimation
    * connfreq_estimation
- 子空间方法
    * klt
    * pklt
- 理想信道选择
    * ics
    * ics_competing_talker
    * ics_constr_rule
    * ics_reverb
    * ics_masker_rule
- 客观评价标准
    
    可懂度
    * NCM
    * CSII

    感知质量
    * comp_snr
    * comp_wss
    * comp_llr
    * comp_is
    * comp_cep
    * comp_fwseg
    * comp_fwseg_variant
    * comp_fwseg_mars
    * pesq
    * composite
    * addnoise_asl
