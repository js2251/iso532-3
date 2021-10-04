function out = Sone2PhonTV2015( in )

SonePhone = [ 0.000535 0
0.000563 0.1
0.000592 0.2
0.000623 0.3
0.000656 0.4
0.000690 0.5
0.000726 0.6
0.000764 0.7
0.000803 0.8
0.000844 0.9
0.000888 1
0.000933 1.1
0.000981 1.2
0.001031 1.3
0.001083 1.4
0.001138 1.5
0.001195 1.6
0.001255 1.7
0.001318 1.8
0.001384 1.9
0.001452 2
0.001524 2.1
0.001600 2.2
0.001678 2.3
0.001761 2.4
0.001846 2.5
0.001936 2.6
0.002032 2.7
0.002130 2.8
0.002233 2.9
0.002339 3
0.002451 3.1
0.002567 3.2
0.002689 3.3
0.002815 3.4
0.002947 3.5
0.003085 3.6
0.003228 3.7
0.003377 3.8
0.003533 3.9
0.003695 4
0.003863 4.1
0.004039 4.2
0.004221 4.3
0.004411 4.4
0.004609 4.5
0.004814 4.6
0.005027 4.7
0.005249 4.8
0.005479 4.9
0.005718 5
0.005966 5.1
0.006224 5.2
0.006491 5.3
0.006768 5.4
0.007056 5.5
0.007354 5.6
0.007663 5.7
0.007983 5.8
0.008315 5.9
0.008658 6
0.009006 6.1
0.009326 6.2
0.009657 6.3
0.009999 6.4
0.010351 6.5
0.010716 6.6
0.011056 6.7
0.011394 6.8
0.011743 6.9
0.012080 7
0.012402 7.1
0.012732 7.2
0.013071 7.3
0.013419 7.4
0.013777 7.5
0.014145 7.6
0.014522 7.7
0.014909 7.8
0.015307 7.9
0.015715 8
0.016134 8.1
0.016564 8.2
0.017006 8.3
0.017459 8.4
0.017924 8.5
0.018401 8.6
0.018863 8.7
0.019315 8.8
0.019778 8.9
0.020251 9
0.020689 9.1
0.021135 9.2
0.021591 9.3
0.022057 9.4
0.022532 9.5
0.023017 9.6
0.023512 9.7
0.024018 9.8
0.024534 9.9
0.025061 10
0.025598 10.1
0.026147 10.2
0.026707 10.3
0.027279 10.4
0.027862 10.5
0.028458 10.6
0.029065 10.7
0.029685 10.8
0.030318 10.9
0.030972 11
0.031631 11.1
0.032304 11.2
0.032990 11.3
0.033690 11.4
0.034404 11.5
0.035133 11.6
0.035876 11.7
0.036634 11.8
0.037403 11.9
0.038104 12
0.038807 12.1
0.039521 12.2
0.040246 12.3
0.040983 12.4
0.041732 12.5
0.042493 12.6
0.043266 12.7
0.044051 12.8
0.044849 12.9
0.045659 13
0.046482 13.1
0.047318 13.2
0.048167 13.3
0.049030 13.4
0.049906 13.5
0.050796 13.6
0.051700 13.7
0.052618 13.8
0.053551 13.9
0.054498 14
0.055460 14.1
0.056437 14.2
0.057429 14.3
0.058436 14.4
0.059459 14.5
0.060498 14.6
0.061553 14.7
0.062625 14.8
0.063712 14.9
0.064817 15
0.065939 15.1
0.067078 15.2
0.068234 15.3
0.069373 15.4
0.070516 15.5
0.071676 15.6
0.072851 15.7
0.074044 15.8
0.075231 15.9
0.076404 16
0.077591 16.1
0.078793 16.2
0.080010 16.3
0.081242 16.4
0.082489 16.5
0.083751 16.6
0.085033 16.7
0.086327 16.8
0.087636 16.9
0.088962 17
0.090303 17.1
0.091661 17.2
0.093035 17.3
0.094426 17.4
0.095834 17.5
0.097259 17.6
0.098702 17.7
0.100162 17.8
0.101639 17.9
0.103136 18
0.104650 18.1
0.106182 18.2
0.107733 18.3
0.109302 18.4
0.110891 18.5
0.112499 18.6
0.114126 18.7
0.115774 18.8
0.117441 18.9
0.119128 19
0.120836 19.1
0.122527 19.2
0.124227 19.3
0.125947 19.4
0.127687 19.5
0.129445 19.6
0.131223 19.7
0.133021 19.8
0.134818 19.9
0.1366 20
0.1384 20.1
0.1402 20.2
0.1421 20.3
0.1439 20.4
0.1458 20.5
0.1477 20.6
0.1496 20.7
0.1515 20.8
0.1535 20.9
0.1554 21
0.1574 21.1
0.1594 21.2
0.1615 21.3
0.1635 21.4
0.1656 21.5
0.1677 21.6
0.1698 21.7
0.1719 21.8
0.1741 21.9
0.1763 22
0.1785 22.1
0.1807 22.2
0.1829 22.3
0.1852 22.4
0.1875 22.5
0.1898 22.6
0.1921 22.7
0.1945 22.8
0.1968 22.9
0.1993 23
0.2017 23.1
0.2041 23.2
0.2066 23.3
0.2090 23.4
0.2115 23.5
0.2140 23.6
0.2165 23.7
0.2190 23.8
0.2215 23.9
0.2241 24
0.2266 24.1
0.2292 24.2
0.2318 24.3
0.2344 24.4
0.2371 24.5
0.2397 24.6
0.2424 24.7
0.2451 24.8
0.2479 24.9
0.2506 25
0.2534 25.1
0.2562 25.2
0.2591 25.3
0.2619 25.4
0.2648 25.5
0.2677 25.6
0.2707 25.7
0.2736 25.8
0.2766 25.9
0.2796 26
0.2827 26.1
0.2857 26.2
0.2888 26.3
0.2919 26.4
0.2951 26.5
0.2983 26.6
0.3015 26.7
0.3047 26.8
0.3079 26.9
0.3112 27
0.3146 27.1
0.3179 27.2
0.3212 27.3
0.3246 27.4
0.3280 27.5
0.3313 27.6
0.3347 27.7
0.3381 27.8
0.3416 27.9
0.3450 28
0.3485 28.1
0.3520 28.2
0.3556 28.3
0.3591 28.4
0.3627 28.5
0.3664 28.6
0.3700 28.7
0.3737 28.8
0.3774 28.9
0.3812 29
0.3850 29.1
0.3888 29.2
0.3926 29.3
0.3965 29.4
0.4004 29.5
0.4043 29.6
0.4083 29.7
0.4122 29.8
0.4163 29.9
0.4203 30
0.4244 30.1
0.4285 30.2
0.4327 30.3
0.4369 30.4
0.4410 30.5
0.4452 30.6
0.4495 30.7
0.4537 30.8
0.4580 30.9
0.4623 31
0.4667 31.1
0.4711 31.2
0.4755 31.3
0.4800 31.4
0.4845 31.5
0.4890 31.6
0.4935 31.7
0.4981 31.8
0.5028 31.9
0.5074 32
0.5121 32.1
0.5168 32.2
0.5215 32.3
0.5263 32.4
0.5311 32.5
0.5359 32.6
0.5408 32.7
0.5457 32.8
0.5506 32.9
0.5556 33
0.5606 33.1
0.5657 33.2
0.5707 33.3
0.5758 33.4
0.5809 33.5
0.5861 33.6
0.5912 33.7
0.5965 33.8
0.6017 33.9
0.6070 34
0.6123 34.1
0.6177 34.2
0.6231 34.3
0.6285 34.4
0.6340 34.5
0.6395 34.6
0.6451 34.7
0.6507 34.8
0.6563 34.9
0.6620 35
0.6677 35.1
0.6735 35.2
0.6793 35.3
0.6851 35.4
0.6910 35.5
0.6970 35.6
0.7029 35.7
0.7090 35.8
0.7150 35.9
0.7211 36
0.7273 36.1
0.7334 36.2
0.7396 36.3
0.7458 36.4
0.7521 36.5
0.7584 36.6
0.7648 36.7
0.7711 36.8
0.7775 36.9
0.7840 37
0.7905 37.1
0.7970 37.2
0.8036 37.3
0.8102 37.4
0.8169 37.5
0.8236 37.6
0.8303 37.7
0.8371 37.8
0.8440 37.9
0.8509 38
0.8578 38.1
0.8648 38.2
0.8719 38.3
0.8790 38.4
0.8861 38.5
0.8933 38.6
0.9005 38.7
0.9078 38.8
0.9151 38.9
0.9224 39
0.9298 39.1
0.9372 39.2
0.9447 39.3
0.9522 39.4
0.9598 39.5
0.9674 39.6
0.9751 39.7
0.9829 39.8
0.9906 39.9
0.9985 40
1.0064 40.1
1.0143 40.2
1.0223 40.3
1.0304 40.4
1.0385 40.5
1.0467 40.6
1.0549 40.7
1.0632 40.8
1.0715 40.9
1.0799 41
1.0884 41.1
1.0969 41.2
1.1054 41.3
1.1139 41.4
1.1226 41.5
1.1312 41.6
1.1399 41.7
1.1487 41.8
1.1575 41.9
1.1663 42
1.1753 42.1
1.1842 42.2
1.1933 42.3
1.2024 42.4
1.2115 42.5
1.2208 42.6
1.2300 42.7
1.2394 42.8
1.2488 42.9
1.2582 43
1.2678 43.1
1.2774 43.2
1.2870 43.3
1.2967 43.4
1.3065 43.5
1.3164 43.6
1.3262 43.7
1.3361 43.8
1.3461 43.9
1.3562 44
1.3663 44.1
1.3765 44.2
1.3867 44.3
1.3970 44.4
1.4074 44.5
1.4178 44.6
1.4283 44.7
1.4389 44.8
1.4496 44.9
1.4603 45
1.4711 45.1
1.4820 45.2
1.4929 45.3
1.5039 45.4
1.5150 45.5
1.5262 45.6
1.5374 45.7
1.5487 45.8
1.5600 45.9
1.5714 46
1.5829 46.1
1.5944 46.2
1.6060 46.3
1.6177 46.4
1.6295 46.5
1.6413 46.6
1.6532 46.7
1.6651 46.8
1.6772 46.9
1.6893 47
1.7014 47.1
1.7137 47.2
1.7261 47.3
1.7385 47.4
1.7510 47.5
1.7636 47.6
1.7763 47.7
1.7890 47.8
1.8018 47.9
1.8146 48
1.8276 48.1
1.8406 48.2
1.8537 48.3
1.8669 48.4
1.8801 48.5
1.8935 48.6
1.9069 48.7
1.9204 48.8
1.9340 48.9
1.9478 49
1.9615 49.1
1.9754 49.2
1.9894 49.3
2.0035 49.4
2.0176 49.5
2.0319 49.6
2.0462 49.7
2.0606 49.8
2.0750 49.9
2.0896 50
2.1042 50.1
2.1190 50.2
2.1338 50.3
2.1487 50.4
2.1637 50.5
2.1789 50.6
2.1941 50.7
2.2094 50.8
2.2248 50.9
2.2403 51
2.2560 51.1
2.2717 51.2
2.2875 51.3
2.3035 51.4
2.3195 51.5
2.3355 51.6
2.3516 51.7
2.3678 51.8
2.3842 51.9
2.4006 52
2.4171 52.1
2.4338 52.2
2.4505 52.3
2.4674 52.4
2.4844 52.5
2.5014 52.6
2.5186 52.7
2.5359 52.8
2.5533 52.9
2.5708 53
2.5885 53.1
2.6062 53.2
2.6240 53.3
2.6419 53.4
2.6599 53.5
2.6781 53.6
2.6963 53.7
2.7147 53.8
2.7332 53.9
2.7518 54
2.7705 54.1
2.7893 54.2
2.8083 54.3
2.8274 54.4
2.8466 54.5
2.8660 54.6
2.8854 54.7
2.9050 54.8
2.9246 54.9
2.9444 55
2.9643 55.1
2.9843 55.2
3.0045 55.3
3.0248 55.4
3.0452 55.5
3.0657 55.6
3.0864 55.7
3.1073 55.8
3.1282 55.9
3.1493 56
3.1705 56.1
3.1919 56.2
3.2134 56.3
3.2349 56.4
3.2566 56.5
3.2784 56.6
3.3004 56.7
3.3225 56.8
3.3447 56.9
3.3671 57
3.3896 57.1
3.4122 57.2
3.4351 57.3
3.4580 57.4
3.4811 57.5
3.5044 57.6
3.5277 57.7
3.5512 57.8
3.5748 57.9
3.5986 58
3.6226 58.1
3.6467 58.2
3.6709 58.3
3.6953 58.4
3.7199 58.5
3.7447 58.6
3.7696 58.7
3.7946 58.8
3.8198 58.9
3.8451 59
3.8706 59.1
3.8962 59.2
3.9220 59.3
3.9480 59.4
3.9741 59.5
4.0005 59.6
4.0269 59.7
4.0536 59.8
4.0804 59.9
4.1075 60
4.1346 60.1
4.1619 60.2
4.1894 60.3
4.2170 60.4
4.2449 60.5
4.2729 60.6
4.3011 60.7
4.3294 60.8
4.3580 60.9
4.3868 61
4.4157 61.1
4.4448 61.2
4.4740 61.3
4.5034 61.4
4.5330 61.5
4.5627 61.6
4.5927 61.7
4.6229 61.8
4.6532 61.9
4.6838 62
4.7146 62.1
4.7456 62.2
4.7767 62.3
4.8080 62.4
4.8395 62.5
4.8712 62.6
4.9032 62.7
4.9353 62.8
4.9676 62.9
5.0002 63
5.0330 63.1
5.0660 63.2
5.0992 63.3
5.1325 63.4
5.1661 63.5
5.1999 63.6
5.2339 63.7
5.2681 63.8
5.3026 63.9
5.3373 64
5.3722 64.1
5.4074 64.2
5.4427 64.3
5.4783 64.4
5.5141 64.5
5.5501 64.6
5.5864 64.7
5.6229 64.8
5.6596 64.9
5.6966 65
5.7339 65.1
5.7713 65.2
5.8089 65.3
5.8468 65.4
5.8849 65.5
5.9233 65.6
5.9619 65.7
6.0008 65.8
6.0400 65.9
6.0794 66
6.1190 66.1
6.1588 66.2
6.1990 66.3
6.2394 66.4
6.2800 66.5
6.3210 66.6
6.3622 66.7
6.4037 66.8
6.4454 66.9
6.4874 67
6.5296 67.1
6.5722 67.2
6.6150 67.3
6.6581 67.4
6.7015 67.5
6.7452 67.6
6.7891 67.7
6.8333 67.8
6.8779 67.9
6.9227 68
6.9678 68.1
7.0132 68.2
7.0589 68.3
7.1050 68.4
7.1512 68.5
7.1978 68.6
7.2447 68.7
7.2920 68.8
7.3395 68.9
7.3874 69
7.4356 69.1
7.4840 69.2
7.5328 69.3
7.5819 69.4
7.6313 69.5
7.6810 69.6
7.7311 69.7
7.7815 69.8
7.8322 69.9
7.8832 70
7.9346 70.1
7.9864 70.2
8.0385 70.3
8.0909 70.4
8.1437 70.5
8.1968 70.6
8.2503 70.7
8.3041 70.8
8.3583 70.9
8.4129 71
8.4678 71.1
8.5231 71.2
8.5787 71.3
8.6348 71.4
8.6912 71.5
8.7480 71.6
8.8052 71.7
8.8627 71.8
8.9207 71.9
8.9790 72
9.0378 72.1
9.0969 72.2
9.1564 72.3
9.2164 72.4
9.2767 72.5
9.3375 72.6
9.3987 72.7
9.4602 72.8
9.5222 72.9
9.5846 73
9.6475 73.1
9.7108 73.2
9.7745 73.3
9.8386 73.4
9.9031 73.5
9.9681 73.6
10.0336 73.7
10.0995 73.8
10.1658 73.9
10.2326 74
10.2998 74.1
10.3676 74.2
10.4358 74.3
10.5044 74.4
10.5735 74.5
10.6431 74.6
10.7133 74.7
10.7838 74.8
10.8549 74.9
10.9264 75
10.9985 75.1
11.0711 75.2
11.1442 75.3
11.2177 75.4
11.2919 75.5
11.3665 75.6
11.4416 75.7
11.5173 75.8
11.5936 75.9
11.6703 76
11.7476 76.1
11.8255 76.2
11.9039 76.3
11.9829 76.4
12.0624 76.5
12.1424 76.6
12.2231 76.7
12.3044 76.8
12.3862 76.9
12.4686 77
12.5516 77.1
12.6352 77.2
12.7194 77.3
12.8043 77.4
12.8897 77.5
12.9757 77.6
13.0623 77.7
13.1496 77.8
13.2375 77.9
13.3260 78
13.4152 78.1
13.5050 78.2
13.5955 78.3
13.6867 78.4
13.7785 78.5
13.8711 78.6
13.9643 78.7
14.0581 78.8
14.1527 78.9
14.2480 79
14.3440 79.1
14.4407 79.2
14.5382 79.3
14.6364 79.4
14.7353 79.5
14.8349 79.6
14.9353 79.7
15.0366 79.8
15.1385 79.9
15.2412 80
15.3447 80.1
15.4490 80.2
15.5541 80.3
15.6600 80.4
15.7668 80.5
15.8743 80.6
15.9827 80.7
16.0919 80.8
16.2020 80.9
16.3130 81
16.4248 81.1
16.5375 81.2
16.6511 81.3
16.7656 81.4
16.8809 81.5
16.9973 81.6
17.1145 81.7
17.2327 81.8
17.3518 81.9
17.4718 82
17.5928 82.1
17.7148 82.2
17.8378 82.3
17.9617 82.4
18.0867 82.5
18.2127 82.6
18.3397 82.7
18.4678 82.8
18.5969 82.9
18.7271 83
18.8584 83.1
18.9907 83.2
19.1241 83.3
19.2586 83.4
19.3942 83.5
19.5309 83.6
19.6688 83.7
19.8078 83.8
19.9479 83.9
20.0892 84
20.2316 84.1
20.3751 84.2
20.5198 84.3
20.6657 84.4
20.8127 84.5
20.9609 84.6
21.1102 84.7
21.2606 84.8
21.4122 84.9
21.5650 85
21.7188 85.1
21.8738 85.2
22.0299 85.3
22.1873 85.4
22.3460 85.5
22.5059 85.6
22.6672 85.7
22.8297 85.8
22.9935 85.9
23.1587 86
23.3251 86.1
23.4929 86.2
23.6620 86.3
23.8325 86.4
24.0044 86.5
24.1775 86.6
24.3520 86.7
24.5279 86.8
24.7052 86.9
24.8839 87
25.0639 87.1
25.2454 87.2
25.4283 87.3
25.6127 87.4
25.7984 87.5
25.9856 87.6
26.1743 87.7
26.3644 87.8
26.5560 87.9
26.7491 88
26.9437 88.1
27.1397 88.2
27.3373 88.3
27.5364 88.4
27.7370 88.5
27.9391 88.6
28.1428 88.7
28.3480 88.8
28.5548 88.9
28.7631 89
28.9730 89.1
29.1846 89.2
29.3977 89.3
29.6124 89.4
29.8288 89.5
30.0468 89.6
30.2664 89.7
30.4877 89.8
30.7106 89.9
30.9353 90
31.1616 90.1
31.3896 90.2
31.6193 90.3
31.8508 90.4
32.0839 90.5
32.3189 90.6
32.5556 90.7
32.7940 90.8
33.0343 90.9
33.2763 91
33.5202 91.1
33.7659 91.2
34.0134 91.3
34.2628 91.4
34.5140 91.5
34.7670 91.6
35.0220 91.7
35.2789 91.8
35.5377 91.9
35.7984 92
36.0611 92.1
36.3257 92.2
36.5924 92.3
36.8610 92.4
37.1316 92.5
37.4043 92.6
37.6790 92.7
37.9558 92.8
38.2346 92.9
38.5155 93
38.7986 93.1
39.0838 93.2
39.3711 93.3
39.6605 93.4
39.9522 93.5
40.2460 93.6
40.5421 93.7
40.8404 93.8
41.1409 93.9
41.4437 94
41.7488 94.1
42.0561 94.2
42.3658 94.3
42.6779 94.4
42.9923 94.5
43.3090 94.6
43.6282 94.7
43.9498 94.8
44.2738 94.9
44.6003 95
44.9293 95.1
45.2607 95.2
45.5947 95.3
45.9312 95.4
46.2703 95.5
46.6119 95.6
46.9562 95.7
47.3030 95.8
47.6525 95.9
48.0047 96
48.3596 96.1
48.7172 96.2
49.0775 96.3
49.4405 96.4
49.8063 96.5
50.1749 96.6
50.5463 96.7
50.9206 96.8
51.2977 96.9
51.6778 97
52.0607 97.1
52.4466 97.2
52.8355 97.3
53.2273 97.4
53.6222 97.5
54.0201 97.6
54.4211 97.7
54.8252 97.8
55.2324 97.9
55.6427 98
56.0562 98.1
56.4729 98.2
56.8929 98.3
57.3160 98.4
57.7425 98.5
58.1723 98.6
58.6054 98.7
59.0419 98.8
59.4817 98.9
59.9250 99
60.3718 99.1
60.8220 99.2
61.2757 99.3
61.7330 99.4
62.1938 99.5
62.6583 99.6
63.1263 99.7
63.5981 99.8
64.0735 99.9
64.5526 100
65.0355 100.1
65.5222 100.2
66.0127 100.3
66.5070 100.4
67.0052 100.5
67.5074 100.6
68.0135 100.7
68.5236 100.8
69.0377 100.9
69.5558 101
70.0780 101.1
70.6044 101.2
71.1349 101.3
71.6696 101.4
72.2085 101.5
72.7517 101.6
73.2990 101.7
73.8507 101.8
74.4067 101.9
74.9670 102
75.5316 102.1
76.1006 102.2
76.6742 102.3
77.2523 102.4
77.8350 102.5
78.4224 102.6
79.0143 102.7
79.6109 102.8
80.2123 102.9
80.8185 103
81.4295 103.1
82.0455 103.2
82.6662 103.3
83.2919 103.4
83.9224 103.5
84.5579 103.6
85.1986 103.7
85.8443 103.8
86.4953 103.9
87.1515 104
87.8129 104.1
88.4797 104.2
89.1519 104.3
89.8293 104.4
90.5122 104.5
91.2005 104.6
91.8945 104.7
92.5940 104.8
93.2991 104.9
94.0100 105
94.7268 105.1
95.4490 105.2
96.1771 105.3
96.9112 105.4
97.6510 105.5
98.3968 105.6
99.1486 105.7
99.9066 105.8
100.6707 105.9
101.4411 106
102.2175 106.1
103.0002 106.2
103.7893 106.3
104.5849 106.4
105.3869 106.5
106.1955 106.6
107.0106 106.7
107.8325 106.8
108.6608 106.9
109.4959 107
110.3378 107.1
111.1866 107.2
112.0424 107.3
112.9051 107.4
113.7749 107.5
114.6519 107.6
115.5359 107.7
116.4271 107.8
117.3257 107.9
118.2316 108
119.1450 108.1
120.0659 108.2
120.9945 108.3
121.9303 108.4
122.8738 108.5
123.8251 108.6
124.7842 108.7
125.7512 108.8
126.7262 108.9
127.7093 109
128.7003 109.1
129.6995 109.2
130.7069 109.3
131.7227 109.4
132.7469 109.5
133.7797 109.6
134.8208 109.7
135.8704 109.8
136.9288 109.9
137.9960 110
139.0720 110.1
140.1570 110.2
141.2509 110.3
142.3538 110.4
143.4658 110.5
144.5871 110.6
145.7177 110.7
146.8579 110.8
148.0072 110.9
149.1661 111
150.3347 111.1
151.5130 111.2
152.7012 111.3
153.8993 111.4
155.1072 111.5
156.3251 111.6
157.5535 111.7
158.7917 111.8
160.0404 111.9
161.2993 112
162.5687 112.1
163.8487 112.2
165.1395 112.3
166.4410 112.4
167.7532 112.5
169.0765 112.6
170.4108 112.7
171.7565 112.8
173.1131 112.9
174.4811 113
175.8606 113.1
177.2517 113.2
178.6545 113.3
180.0689 113.4
181.4952 113.5
182.9334 113.6
184.3838 113.7
185.8462 113.8
187.3209 113.9
188.8080 114
190.3076 114.1
191.8196 114.2
193.3444 114.3
194.8822 114.4
196.4326 114.5
197.9961 114.6
199.5728 114.7
201.1628 114.8
202.7660 114.9
204.3828 115
206.0132 115.1
207.6572 115.2
209.3151 115.3
210.9870 115.4
212.6729 115.5
214.3728 115.6
216.0872 115.7
217.8157 115.8
219.5589 115.9
221.3169 116
223.0895 116.1
224.8771 116.2
226.6798 116.3
228.4975 116.4
230.3308 116.5
232.1793 116.6
234.0434 116.7
235.9233 116.8
237.8189 116.9
239.7307 117
241.6583 117.1
243.6024 117.2
245.5627 117.3
247.5397 117.4
249.5331 117.5
251.5435 117.6
253.5706 117.7
255.6151 117.8
257.6764 117.9
259.7554 118
261.8516 118.1
263.9657 118.2
266.0973 118.3
268.2471 118.4
270.4150 118.5
272.6009 118.6
274.8053 118.7
277.0283 118.8
279.2698 118.9
281.5303 119
283.8098 119.1
286.1082 119.2
288.4261 119.3
290.7635 119.4
293.1204 119.5
295.4972 119.6
297.8937 119.7
300.3101 119.8
302.7468 119.9
305.2040 120 ] ;

SonePhone = SonePhone';

out = interpolation(SonePhone(1,:), SonePhone(2,:), in);