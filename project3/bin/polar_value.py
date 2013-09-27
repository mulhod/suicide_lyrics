#!/usr/bin/python -tt
from __future__ import print_function
import nltk

# Given a file in which each line contains a polar term followed by a polar value,
# creates a polar_value_dict in which each polar term is mapped to a polar value.
def polar_value_dict_maker(filename):
	polar_value_dict = {}
	f = open(filename, 'rU')
	for line in f:
		line_list = line.split()
		polar_term = line_list[0]
		polar_value = int(line_list[1])
		polar_value_dict[polar_term] = polar_value
	return polar_value_dict


from os import listdir
from os.path import isfile, join
# Given a directory, returns a list of all the file-names (not including the path)
# Usage example: file_list('/home/mulhollandm2/test')
def file_list(dir):
	files = [ f for f in listdir(dir) if isfile(join(dir,f)) ]
	return files


# Given a text file, returns a list of the file's tokens.
def token_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case if not already in
		# lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	return text_tok


import sys
# Given the AFINN polar values file and a dir where text files are stored, prints
# out a spreadsheet in which each line lists the text file name succeeded by that
# file's total polar value and average polar value.
# Note: The text file dir should contain lemmatized text files.
def main():
	if len(sys.argv) != 3:
		print('usage: ./polar_value.py /path/to/AFINN.csv /path/to/dir/of/text/files/')
		sys.exit(1)
	
	AFINN = sys.argv[1]
	text_file_dirpath = sys.argv[2]
	text_file_list = file_list(text_file_dirpath)
	
	polar_value_dict = polar_value_dict_maker(AFINN)
	
	print('file', end="\t")
	print('total polar value', end="\t")
	print('average polar value', end="")
	print('')
	
	for f in text_file_list:
		total_polar_value = 0
		polar_values_list = []
		text_file_tok = token_list(text_file_dirpath + f)
		for word in text_file_tok:
			if word in polar_value_dict.keys():
				total_polar_value += polar_value_dict[word]
				polar_values_list.append(polar_value_dict[word])
		average_polar_value = float(total_polar_value)/float(len(polar_values_list))
		
		print(f, end="\t")
		print(total_polar_value, end="\t")
		print(average_polar_value, end="")
		print('')

if __name__ == '__main__':
	main()