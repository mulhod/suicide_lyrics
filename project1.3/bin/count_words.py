#!/usr/bin/python -tt
# Usage: python(2.6) count_words.py /path/to/word-list-dir/ /path/to/text-file-dir/ (> output-file.csv)
from __future__ import print_function

import nltk
# Given a file, returns a list of that file's words.
def list_maker(filename):
	f = open(filename, 'rU')
	words = f.read() # Reads in the whole file as a string
	words = words.lower() # Converts string's contents to lower-case,
		# just in case it's necessary.
	word_list = nltk.word_tokenize(words) # Tokenizes all the words
		# and saves the tokens in a list
	f.close()
	return word_list


# Given a list of word tokens, returns a list of the unique types.
def list_uniq(words):
	words = sorted(words) # Sort the list of input words, if not
		# already sorted
	length = len(words)
	currentInd = 0
	for word in words:
		if length <= 1:
			break
		elif word == words[currentInd + 1]:
			words.pop(currentInd + 1)
			length -= 1
			while currentInd < length - 1:
				if word == words[currentInd + 1]:
					words.pop(currentInd + 1)
					length -= 1
				else:
					break
		if currentInd + 1 < length - 1:
			currentInd += 1
		else:
			break
	return words


from os import listdir
from os.path import isfile, join
# Given a directory, returns a list of all the file-names (not including the path)
# Usage example: file_list('/home/mulhollandm2/test/')
def file_list(dir):
	files = [ f for f in listdir(dir) if isfile(join(dir,f)) ]
	return files

import sys
def main():
	if len(sys.argv) != 3:
		print(r'usage: python count_words.py /path/to/word-list-dir/ /path/to/text-file-dir/')
		sys.exit(1)

	word_list_path = sys.argv[1] # dir for word-list files
	text_file_dir = sys.argv[2] # dir for input files

	word_list_files = file_list(word_list_path)
	text_files = file_list(text_file_dir)

	# Prints header line, including "file" for first column and then word-list name
	# for each succeeding column.
	print('file', end="\t")
	for word_list_file in word_list_files:
		print(word_list_file, end="\t")
	print('')
	
	# Make unique word lists.
	list_of_word_lists = []
	for word_list_file in word_list_files:
		word_list = list_maker(word_list_path + word_list_file)
		word_list = list_uniq(word_list)
		list_of_word_lists.append(word_list)

	for text_file in text_files:
		text_file_list = list_maker(text_file_dir + text_file)
		print(text_file, end="\t")
		for word_list in list_of_word_lists:
			count = 0
			for word in text_file_list:
				if word in word_list:
					count += 1
			print(count, end='\t')
		print('')


if __name__ == '__main__':
	main()