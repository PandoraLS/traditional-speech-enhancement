# traditional-speech-enhancement-algorithms

This repository contains traditional speech enhancement algorithms, accompanying the book `Speech enhancement_theory and practice.pdf`. It includes classic speech enhancement algorithms and objective evaluation metrics for speech quality.
This repository only includes `matlab` code and sample audio files (*.wav), corresponding to the `MATLAB code` section of the CD-ROM that comes with the book.
The code was published quite some time ago and may require appropriate modifications to run on the latest versions of `matlab`. For example, in `statistical_based/wiener_as.m`:

```
wavwrite( enhanced_speech, fs, nbits, outfile);
```

needs to be changed to the following to run in `matlab2016`:

```
audiowrite(outfile,enhanced_speech,fs);
```

The overall folder structure is as follows:

```
+---spectral_subtractive                    # Spectral Subtraction Methods
+---statistical_based                       # Statistical-Based Methods
+---subspace                                # Subspace Methods
+---noise_estimation                        # Noise Estimation Algorithms
\---objective_measures                      # Objective Evaluation Metrics
|   +---intelligibility                     # Speech Intelligibility
|   \---quality                             # Speech Quality
+---ideal_channel_selection                 # Ideal Channel Selection
```

Each subfolder contains a `readme.txt` and `readme.pdf`, which provide usage examples and corresponding references for each algorithm.
The algorithms included in each folder are as follows:

```
├─spectral_subtractive                      # Spectral Subtraction Methods
│      specsub.m                            # Basic spectral subtraction algorithm
│      mband.m                              # Multiband spectral subtraction algorithm
│      ss_rdc.m                             # Spectral subtraction with reduced delay convolution and adaptive gain averaging
│
├─statistical_based                         # Statistical-Based Methods
│      wiener_iter.m                        # Iterative Wiener filtering based on an all-pole speech model
│      wiener_as.m                          # Wiener filtering based on a priori SNR estimation
│      wiener_wt.m                          # Wiener filtering based on wavelet thresholding of multitaper spectra
│      mt_mask.m                            # Psychoacoustically-based algorithm
│      audnoise.m                           # Audible noise suppression algorithm
│      mmse.m                               # MMSE algorithm with or without speech presence uncertainty
│      logmmse.m                            # Log-MMSE algorithm
│      logmmse_SPU.m                        # Log-MMSE algorithm with speech presence uncertainty
│      stsa_weuclid.m                       # Bayesian estimator based on a weighted Euclidean distortion measure
│      stsa_wcosh.m                         # Bayesian estimator based on a weighted Cosh distortion measure
│      stsa_wlr.m                           # Bayesian estimator based on a weighted likelihood ratio distortion measure
│      stsa_mis.m                           # Bayesian estimator based on a modified Itakura-Saito distortion measure
│
├─subspace                                  # Subspace Methods
│      klt.m                                # Subspace method with embedded pre-whitening
│      pklt.m                               # Perceptually-based subspace method
│
├─noise_estimation                          # Noise Estimation
│      specsub_ns.m                         # A collection of different noise estimation algorithms
│      martin_estimation.m                  # Martin's minimum tracking algorithm
│      mcra_estimation.m                    # MCRA algorithm
│      mcra2_estimation.m                   # MCRA2 algorithm
│      imcra_estimation.m                   # Improved MCRA algorithm
│      doblinger_estimation.m               # Continuous minimum tracking algorithm
│      hirsch_estimation.m                  # Weighted spectral averaging
│      connfreq_estimation.m                # Joint time-frequency region
│
├─objective_measures                        # Objective Evaluation Metrics
│  ├─intelligibility                        # Speech Intelligibility
│  │      CSII.m                            # Computes the CSII measure
│  │      NCM.m                             # Computes the NCM measure
│  │      SII.m                             # Computes the SII measure
│  │
│  └─quality                                # Speech Quality
│          comp_snr.m                       # Computes segmental and overall SNR
│          comp_wss.m                       # Computes the weighted spectral slope measure
│          comp_llr.m                       # Computes the likelihood ratio
│          comp_is.m                        # Computes the Itakura-Saito measure
│          comp_cep.m                       # Computes the cepstral distance
│          comp_fwseg.m                     # Computes the frequency-weighted segmental SNR (fwSNRseg)
│          comp_fwseg_variant.m             # Computes a frequency-variant fwSNRseg
│          comp_fwseg_mars.m                # Computes a frequency-variant fwSNRseg based on MARS analysis
│          pesq.m                           # Computes PESQ (Perceptual Evaluation of Speech Quality)
│          composite.m                      # Computes the composite measures
│          addnoise_asl.m                   # Adds noise to clean speech at a specified SNR based on active speech level
│
└─ideal_channel_selection                   # Ideal Channel Selection
        ics.m                               # Channel selection based on SNR (ideal binary mask)
        ics_constr_rule.m                   # Channel selection based on the SNR_ESI rule
        ics_masker_rule.m                   # Channel selection based on masker constraints
        ics_reverb.m                        # Channel selection based on the SRR rule
```
