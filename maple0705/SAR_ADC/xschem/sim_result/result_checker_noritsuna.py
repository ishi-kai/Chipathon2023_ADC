#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import csv

from datetime import datetime

import numpy as np
from math import floor

import sys, os

import pandas as pd
import matplotlib.pyplot as plt
import csv


if __name__ == '__main__':

	ref_volt = 3.3

	result_file = "sar_adc_tran_out_typ_woLDO_eachBlockExtracted_CArrayideal_20240416.csv"
	result_file_d = open(result_file, mode='r')
	result_list = pd.read_csv(result_file_d).values.tolist()

	bits_file = "vout_result_CArrayideal.csv"
	bits_file_d = open(bits_file, mode='w')


	bits_file_d.write("vin,adc\n")
	for vin_cnt in range(0, len(result_list)):
		volt_list = result_list[vin_cnt]
		div_num = 1
		cal_data = 0
		for vout_bit_cnt in range(1 , len(volt_list)):
			vout_volt_bit = 1 if volt_list[0] < volt_list[vout_bit_cnt] else 0
			div_num = div_num * 2

			cal_data = cal_data + (vout_volt_bit/div_num)
#			print("cal_data=" + str(cal_data) + " div_num=" + str(div_num) + " vout_volt_bit=" + str(vout_volt_bit))


		result_list[vin_cnt]
		print("vin=" + str(volt_list[0]) + " adc=" + str(cal_data * ref_volt))
		bits_file_d.write(str(volt_list[0]) + "," + str(cal_data * ref_volt) + "\n")
