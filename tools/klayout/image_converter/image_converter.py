#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from PIL import Image
import datetime
import pya

unit_nm = 1000 # 1um
cell_name = "ISHIKAI_LOGO"
origin_xy = (0,0)
pix_threshold = 190
gray_threshold = 128

# please don't touch.
metal5_layer_num1 = 81
metal5_layer_num2 = 0
pad_layer_num1 = 37
pad_layer_num2 = 0


class ImageConverter():

	def cal_real_position_xy(
				self, 
				loc_x, 
				loc_y, 
				unit):

					start_xy = (origin_xy[0] + (loc_x * unit), origin_xy[1] + (-1 * (loc_y * unit)))
					end_xy = (origin_xy[0] + ((loc_x+1) * unit), origin_xy[1] + (-1 * (loc_y+1) * unit))

					return start_xy, end_xy


	def generate_Metal5_cells(
				self, 
				start_xy, 
				end_xy, 
				layout,
				cell):

		m5 = layout.layer(metal5_layer_num1, metal5_layer_num2)
		cell.shapes(m5).insert(pya.Box(start_xy[0], start_xy[1], end_xy[0], end_xy[1]))

		pad = layout.layer(pad_layer_num1, pad_layer_num2)
		cell.shapes(pad).insert(pya.Box(start_xy[0], start_xy[1], end_xy[0], end_xy[1]))


	def generate(
			self, 
			img_file, 
			base_line_size,
			layout,
			cell):

		img = Image.open(img_file).convert('L')
		resized_times = base_line_size / img.height
		resized_width = int(img.width * resized_times)
		resized_height = int(img.height * resized_times)
		img_resized = img.resize((resized_width, resized_height))

		img_resized.point(lambda x: 0 if x < gray_threshold else 255)

		img_size = img_resized.size
		line_pix = ""
		loc_x = 0
		loc_y = 0
		for y in range(img_size[1]):
			line_pix = ""
			for x in range(img_size[0]):
				pix_num = img_resized.getpixel((x, y))
				if int(pix_num) < pix_threshold:
					real_start_xy, real_end_xy = self.cal_real_position_xy(loc_x, loc_y, unit_nm)
					self.generate_Metal5_cells(real_start_xy, real_end_xy, layout, cell)
					line_pix = line_pix + "1"
				else:
					line_pix = line_pix + "0"
				loc_x = loc_x + 1
			print(line_pix)
			loc_x = 0
			loc_y = loc_y + 1



if __name__ == '__main__':

	img_file = 'ishikai_icon.png'
	base_line_size = 100
	
	file_dir = None


	layout = pya.Layout()
	cell = layout.create_cell(cell_name)


	imgCon = ImageConverter()
	imgCon.generate(img_file, base_line_size, layout, cell)


	dt_now = datetime.datetime.now()
	file_name = ("img_" + 
		str(dt_now.year) + 
		str(dt_now.month) + 
		str(dt_now.day) + 
		str(dt_now.hour) + 
		str(dt_now.minute) + 
		str(dt_now.second) + 
		".gds")
	if file_dir == None:
		layout.write(file_name)
	else:
		layout.write(file_dir + file_name)

