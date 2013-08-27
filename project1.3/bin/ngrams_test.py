#!/usr/bin/python -tt
from __future__ import print_function
import nltk

# For unigrams: Given a text file (say, a file of all an artist's lyrics), returns a
# list of unique unigrams.
def unigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	uniq_unigrams = list_uniq(text_tok) # Stores a list of the unique words in
		# the text
	return uniq_unigrams


# For bigrams: Given a text file, returns a list of unique bigrams.
def bigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	bigrams = [] # To store the non-unique bigrams
	currentInd = 0
	for word in text_tok:
		if currentInd + 1 < length:
			bigrams.append((text_tok[currentInd], text_tok[currentInd + 1]))
			currentInd += 1
		else:
			break
	uniq_bigrams = list_uniq(bigrams)
	return uniq_bigrams


# For trigrams: Given a text file, returns a list of unique trigrams.
def trigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	trigrams = [] # To store the non-unique trigrams
	currentInd = 0
	for word in text_tok:
		if currentInd + 2 < length:
			trigrams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2]))
			currentInd += 1
		else:
			break
	uniq_trigrams = list_uniq(trigrams)
	return uniq_trigrams


# For 4-grams: Given a text file, returns a list of unique 4-grams.
def four_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	four_grams = [] # To store the non-unique four_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 3 < length:
			four_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3]))
			currentInd += 1
		else:
			break
	uniq_four_grams = list_uniq(four_grams)
	return uniq_four_grams


# For 5-grams: Given a text file, returns a list of unique 5-grams.
def five_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	five_grams = [] # To store the non-unique five_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 4 < length:
			five_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3], text_tok[currentInd + 4]))
			currentInd += 1
		else:
			break
	uniq_five_grams = list_uniq(five_grams)
	return uniq_five_grams


# For 6-grams: Given a text file, returns a list of unique 6-grams.
def six_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	six_grams = [] # To store the non-unique six_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 5 < length:
			six_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3], text_tok[currentInd + 4], text_tok[currentInd + 5]))
			currentInd += 1
		else:
			break
	uniq_six_grams = list_uniq(six_grams)
	return uniq_six_grams


# Lists all of the unique tokens in a list
def list_uniq(list):
	list = sorted(list)
	length = len(list)
	currentInd = 0
	for token in list:
		if length <= 1:
			break
		elif token == list[currentInd + 1]:
			list.pop(currentInd + 1)
			length -= 1
			while currentInd < length - 1:
				if token == list[currentInd + 1]:
					list.pop(currentInd + 1)
					length -= 1
				else:
					break
		if currentInd + 1 < length - 1:
			currentInd += 1
		else:
			break
	return list


from os import listdir
from os.path import isfile, join
# Given a directory, returns a list of all the file-names (not including the path)
# Usage example: file_list('/home/mulhollandm2/test')
def file_list(dir):
	files = [ f for f in listdir(dir) if isfile(join(dir,f)) ]
	return files


import sys
# It might be a good idea to use the lemmatized version of the files so that things
# don't get counted twice, etc.
def main():
	if len(sys.argv) != 4:
		print('usage: ./ngrams.py /path/to/suicide/artist/files/dir/ /path/to/non-suicide/artist/files/dir/ /path/to/songs/dir/')
		sys.exit(1)
		
	suicide_artist_files_dirpath = sys.argv[1] # dir for suicide artist files
	nonsuicide_artist_files_dirpath = sys.argv[2] # dir for nonsuicide artist
		# files
	songs_dirpath = sys.argv[3] # dir for songs
	
	suicide_artist_files = file_list(suicide_artist_files_dirpath) # Stores a
		# list of the files in the suicide artists directory
	nonsuicide_artist_files = file_list(nonsuicide_artist_files_dirpath)
		# Stores a list of the files in the artists directory
	songs_files = file_list(songs_dirpath) # Stores a list of the files in the
		# songs dir
	
	# Lists to store n-grams for suicide and non-suicide artists
	suicide_unigram_profile = []
	suicide_bigram_profile = []
	"""
	suicide_trigram_profile = []
	suicide_four_gram_profile = []
	suicide_five_gram_profile = []
	suicide_six_gram_profile = []
	"""
	nonsuicide_unigram_profile = []
	nonsuicide_bigram_profile = []
	"""
	nonsuicide_trigram_profile = []
	nonsuicide_four_gram_profile = []
	nonsuicide_five_gram_profile = []
	nonsuicide_six_gram_profile = []
	"""
	
	# Populate the suicide n-gram profiles with n-grams from actual artist
	# files.
	for artist_file in suicide_artist_files:
		suicide_unigram_profile.extend(unigram_list(suicide_artist_files_dirpath + artist_file))
		suicide_bigram_profile.extend(bigram_list(suicide_artist_files_dirpath + artist_file))
		"""
		suicide_trigram_profile.extend(trigram_list(suicide_artist_files_dirpath + artist_file))
		suicide_four_gram_profile.extend(four_gram_list(suicide_artist_files_dirpath + artist_file))
		suicide_five_gram_profile.extend(five_gram_list(suicide_artist_files_dirpath + artist_file))
		suicide_six_gram_profile.extend(six_gram_list(suicide_artist_files_dirpath + artist_file))
		"""
	
	# Populate the non-suicide n-gram profiles with n-grams from actual
	# artist files.
	for artist_file in nonsuicide_artist_files:
		nonsuicide_unigram_profile.extend(unigram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_bigram_profile.extend(bigram_list(nonsuicide_artist_files_dirpath + artist_file))
		"""
		nonsuicide_trigram_profile.extend(trigram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_four_gram_profile.extend(four_gram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_five_gram_profile.extend(five_gram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_six_gram_profile.extend(six_gram_list(nonsuicide_artist_files_dirpath + artist_file))
		"""
	
	# Make sure that no n-grams show up more than once in the profiles
	suicide_unigram_profile = list_uniq(suicide_unigram_profile)
	suicide_bigram_profile = list_uniq(suicide_bigram_profile)
	"""
	suicide_trigram_profile = list_uniq(suicide_trigram_profile)
	suicide_four_gram_profile = list_uniq(suicide_four_gram_profile)
	suicide_five_gram_profile = list_uniq(suicide_five_gram_profile)
	suicide_six_gram_profile = list_uniq(suicide_six_gram_profile)
	"""
	nonsuicide_unigram_profile = list_uniq(nonsuicide_unigram_profile)
	nonsuicide_bigram_profile = list_uniq(nonsuicide_bigram_profile)
	"""
	nonsuicide_trigram_profile = list_uniq(nonsuicide_trigram_profile)
	nonsuicide_four_gram_profile = list_uniq(nonsuicide_four_gram_profile)
	nonsuicide_five_gram_profile = list_uniq(nonsuicide_five_gram_profile)
	nonsuicide_six_gram_profile = list_uniq(nonsuicide_six_gram_profile)
	"""
	
	
	# Lists to store exclusive n-grams for suicide and non-suicide artists
	suicide_unigram_profile_exclusive = []
	suicide_bigram_profile_exclusive = []

	"""
	suicide_trigram_profile_exclusive = []
	suicide_four_gram_profile_exclusive = []
	suicide_five_gram_profile_exclusive = []
	suicide_six_gram_profile_exclusive = []
		# Initialize non-suicide exclusive profiles by simply copying the
		# the non-exclusive profiles, from which the overlap n-grams will
		# will be deleted.
	"""

	nonsuicide_unigram_profile_exclusive = nonsuicide_unigram_profile
	nonsuicide_bigram_profile_exclusive = nonsuicide_bigram_profile

	"""
	nonsuicide_trigram_profile_exclusive = nonsuicide_trigram_profile
	nonsuicide_four_gram_profile_exclusive = nonsuicide_four_gram_profile
	nonsuicide_five_gram_profile_exclusive = nonsuicide_five_gram_profile
	nonsuicide_six_gram_profile_exclusive = nonsuicide_six_gram_profile
	"""
 
	# Populate the exclusive n-gram profiles
	for ngram in suicide_unigram_profile:
		if ngram not in nonsuicide_unigram_profile:
			suicide_unigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_unigram_profile:
			nonsuicide_unigram_profile_exclusive.remove(ngram)
	
	for ngram in suicide_bigram_profile:
		if ngram not in nonsuicide_bigram_profile:
			suicide_bigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_bigram_profile:
			nonsuicide_bigram_profile_exclusive.remove(ngram)

	"""
	for ngram in suicide_trigram_profile:
		if ngram not in nonsuicide_trigram_profile:
			suicide_trigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_trigram_profile:
			nonsuicide_trigram_profile_exclusive.remove(ngram)
	
	for ngram in suicide_four_gram_profile:
		if ngram not in nonsuicide_four_gram_profile:
			suicide_four_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_four_gram_profile:
			nonsuicide_four_gram_profile_exclusive.remove(ngram)
	
	for ngram in suicide_five_gram_profile:
		if ngram not in nonsuicide_five_gram_profile:
			suicide_five_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_five_gram_profile:
			nonsuicide_five_gram_profile_exclusive.remove(ngram)
	
	for ngram in suicide_six_gram_profile:
		if ngram not in nonsuicide_six_gram_profile:
			suicide_six_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_six_gram_profile:
			nonsuicide_six_gram_profile_exclusive.remove(ngram)
	"""
	
	# Prints header line, including "file" for first column and then
	# name of feature for each succeeding column.
	print('file', end="\t")
	print('% suicide 1-grams', end="\t")
	print('% suicide 2-grams', end="\t")
	"""
	print('% suicide 3-grams', end="\t")
	print('% suicide 4-grams', end="\t")
	print('% suicide 5-grams', end="\t")
	print('% suicide 6-grams', end="\t")
	"""
	print('% non-suicide 1-grams', end="\t")
	print('% non-suicide 2-grams', end="\t")
	"""
	print('% non-suicide 3-grams', end="\t")
	print('% non-suicide 4-grams', end="\t")
	print('% non-suicide 5-grams', end="\t")
	print('% non-suicide 6-grams', end="")
	"""
	print('')
	
	# Temporary stand-in for stuff below
	file_unigram_profile = unigram_list(songs_dirpath + songs_files[0])
	file_bigram_profile = bigram_list(songs_dirpath + songs_files[0])
	
	total_unigrams = len(file_unigram_profile)
	total_bigrams = len(file_bigram_profile)
	
	file_unigrams_in_suicide_exclusive = []
	file_bigrams_in_suicide_exclusive = []
	file_unigrams_in_nonsuicide_exclusive = []
	file_bigrams_in_nonsuicide_exclusive = []
	
	for unigram in file_unigram_profile:
		if unigram in suicide_unigram_profile_exclusive:
			file_unigrams_in_suicide_exclusive.append(unigram)
		elif unigram in nonsuicide_unigram_profile_exclusive:
			file_unigrams_in_nonsuicide_exclusive.append(unigram)
	
	for bigram in file_bigram_profile:
		if bigram in suicide_bigram_profile_exclusive:
			file_bigrams_in_suicide_exclusive.append(bigram)
		elif bigram in nonsuicide_bigram_profile_exclusive:
			file_bigrams_in_nonsuicide_exclusive.append(bigram)
	
	total_unigrams_in_suicide_exclusive = len(file_unigrams_in_suicide_exclusive)
	total_bigrams_in_suicide_exclusive = len(file_bigrams_in_suicide_exclusive)
	total_unigrams_in_nonsuicide_exclusive = len(file_unigrams_in_nonsuicide_exclusive)
	total_bigrams_in_nonsuicide_exclusive = len(file_bigrams_in_nonsuicide_exclusive)
	
	ratio_suicide_exclusive_unigrams = float(total_unigrams_in_suicide_exclusive)/float(total_unigrams)
	ratio_suicide_exclusive_bigrams = float(total_bigrams_in_suicide_exclusive)/float(total_bigrams)
	ratio_nonsuicide_exclusive_unigrams = float(total_unigrams_in_nonsuicide_exclusive)/float(total_unigrams)
	ratio_nonsuicide_exclusive_bigrams = float(total_bigrams_in_nonsuicide_exclusive)/float(total_bigrams)
	
	print(songs_files[0], end="\t")
	print(ratio_suicide_exclusive_unigrams, end="\t")
	print(ratio_suicide_exclusive_bigrams, end="\t")
	print(ratio_nonsuicide_exclusive_unigrams, end="\t")
	print(ratio_nonsuicide_exclusive_bigrams, end="")
	print('')
	# End repeat
	
	"""
	# For each song in the songs directory, print the file's name and then each
	# feature value
	for song_file in songs_files:
		
		# Create n-gram profiles for song
		file_unigram_profile = unigram_list(songs_dirpath + song_file)
		file_bigram_profile = bigram_list(songs_dirpath + song_file)
		file_trigram_profile = trigram_list(songs_dirpath + song_file)
		file_four_gram_profile = four_gram_list(songs_dirpath + song_file)
		file_five_gram_profile = five_gram_list(songs_dirpath + song_file)
		file_six_gram_profile = six_gram_list(songs_dirpath + song_file)
		
		# Number of n-grams
		total_unigrams = len(file_unigram_profile)
		total_bigrams = len(file_bigram_profile)
		total_trigrams = len(file_trigram_profile)
		total_four_grams = len(file_four_gram_profile)
		total_five_grams = len(file_five_gram_profile)
		total_six_grams = len(file_six_gram_profile)
		
		# Variables that store a list of the n-grams that are in both the
		# file and the exclusive profiles
		file_unigrams_in_suicide_exclusive = []
		file_bigrams_in_suicide_exclusive = []
		file_trigrams_in_suicide_exclusive = []
		file_four_grams_in_suicide_exclusive = []
		file_five_grams_in_suicide_exclusive = []
		file_six_grams_in_suicide_exclusive = []
		file_unigrams_in_nonsuicide_exclusive = []
		file_bigrams_in_nonsuicide_exclusive = []
		file_trigrams_in_nonsuicide_exclusive = []
		file_four_grams_in_nonsuicide_exclusive = []
		file_five_grams_in_nonsuicide_exclusive = []
		file_six_grams_in_nonsuicide_exclusive = []
		
		# Populate file n-gram exclusive overlap lists
		for unigram in file_unigram_profile:
			if unigram in suicide_unigram_profile_exclusive:
				file_unigrams_in_suicide_exclusive.extend(unigram)
			elif unigram in nonsuicide_unigram_profile_exclusive:
				file_unigrams_in_nonsuicide_exclusive.extend(unigram)
		
		for bigram in file_bigram_profile:
			if bigram in suicide_bigram_profile_exclusive:
				file_bigrams_in_suicide_exclusive.extend(bigram)
			elif bigram in nonsuicide_bigram_profile_exclusive:
				file_bigrams_in_nonsuicide_exclusive.extend(bigram)
		
		for trigram in file_trigram_profile:
			if trigram in suicide_trigram_profile_exclusive:
				file_trigrams_in_suicide_exclusive.extend(trigram)
			elif trigram in nonsuicide_trigram_profile_exclusive:
				file_trigrams_in_nonsuicide_exclusive.extend(trigram)
		
		for four_gram in file_four_gram_profile:
			if four_gram in suicide_four_gram_profile_exclusive:
				file_four_grams_in_suicide_exclusive.extend(four_gram)
			elif four_gram in nonsuicide_four_gram_profile_exclusive:
				file_four_grams_in_nonsuicide_exclusive.extend(four_gram)
		
		for five_gram in file_five_gram_profile:
			if five_gram in suicide_five_gram_profile_exclusive:
				file_five_grams_in_suicide_exclusive.extend(five_gram)
			elif five_gram in nonsuicide_five_gram_profile_exclusive:
				file_five_grams_in_nonsuicide_exclusive.extend(five_gram)
		
		for six_gram in file_six_gram_profile:
			if six_gram in suicide_six_gram_profile_exclusive:
				file_six_grams_in_suicide_exclusive.extend(six_gram)
			elif six_gram in nonsuicide_six_gram_profile_exclusive:
				file_six_grams_in_nonsuicide_exclusive.extend(six_gram)
		
		# Counts of the number of n-grams in both the file and the exclusive
		# profiles
		total_unigrams_in_suicide_exclusive = len(file_unigrams_in_suicide_exclusive)
		total_bigrams_in_suicide_exclusive = len(file_bigrams_in_suicide_exclusive)
		total_trigrams_in_suicide_exclusive = len(file_trigrams_in_suicide_exclusive)
		total_four_grams_in_suicide_exclusive = len(file_four_grams_in_suicide_exclusive)
		total_five_grams_in_suicide_exclusive = len(file_five_grams_in_suicide_exclusive)
		total_six_grams_in_suicide_exclusive = len(file_six_grams_in_suicide_exclusive)
		total_unigrams_in_nonsuicide_exclusive = len(file_unigrams_in_nonsuicide_exclusive)
		total_bigrams_in_nonsuicide_exclusive = len(file_bigrams_in_nonsuicide_exclusive)
		total_trigrams_in_nonsuicide_exclusive = len(file_trigrams_in_nonsuicide_exclusive)
		total_four_grams_in_nonsuicide_exclusive = len(file_four_grams_in_nonsuicide_exclusive)
		total_five_grams_in_nonsuicide_exclusive = len(file_five_grams_in_nonsuicide_exclusive)
		total_six_grams_in_nonsuicide_exclusive = len(file_six_grams_in_nonsuicide_exclusive)
		
		# Feature values: (total n-grams in exclusive profiles)/(total n-grams)
		ratio_suicide_exclusive_unigrams = float(total_unigrams_in_suicide_exclusive)/float(total_unigrams)
		ratio_suicide_exclusive_bigrams = float(total_bigrams_in_suicide_exclusive)/float(total_bigrams)
		ratio_suicide_exclusive_trigrams = float(total_trigrams_in_suicide_exclusive)/float(total_trigrams)
		ratio_suicide_exclusive_four_grams = float(total_four_grams_in_suicide_exclusive)/float(total_four_grams)
		ratio_suicide_exclusive_five_grams = float(total_five_grams_in_suicide_exclusive)/float(total_five_grams)
		ratio_suicide_exclusive_six_grams = float(total_six_grams_in_suicide_exclusive)/float(total_six_grams)
		ratio_nonsuicide_exclusive_unigrams = float(total_unigrams_in_nonsuicide_exclusive)/float(total_unigrams)
		ratio_nonsuicide_exclusive_bigrams = float(total_bigrams_in_nonsuicide_exclusive)/float(total_bigrams)
		ratio_nonsuicide_exclusive_trigrams = float(total_trigrams_in_nonsuicide_exclusive)/float(total_trigrams)
		ratio_nonsuicide_exclusive_four_grams = float(total_four_grams_in_nonsuicide_exclusive)/float(total_four_grams)
		ratio_nonsuicide_exclusive_five_grams = float(total_five_grams_in_nonsuicide_exclusive)/float(total_five_grams)
		ratio_nonsuicide_exclusive_six_grams = float(total_six_grams_in_nonsuicide_exclusive)/float(total_six_grams)
		
		print(song_file, end="\t")
		print(ratio_suicide_exclusive_unigrams, end="\t")
		print(ratio_suicide_exclusive_bigrams, end="\t")
		print(ratio_suicide_exclusive_trigrams, end="\t")
		print(ratio_suicide_exclusive_four_grams, end="\t")
		print(ratio_suicide_exclusive_five_grams, end="\t")
		print(ratio_suicide_exclusive_six_grams, end="")
		print('')
	"""

if __name__ == '__main__':
	main()